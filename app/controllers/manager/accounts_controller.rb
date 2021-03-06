class Manager::AccountsController < Manager::ResourceController
  belongs_to :children, optional: true
  belongs_to :kindergarten, optional: true

  def index
    @accounts = Account.all
  end

  def new
    @account = Account.new(child: @children)
  end

  def show
    @account = Account.find(params[:id])
    @state = @account.child.groups.map{|g| g.kindergarten}.map{|k| k.state}.uniq.first

    seconds_per_day = @account.child.groups.map { |g| g.ends_on - g.starts_on }.sum
    seconds_per_week = seconds_per_day * 5.days
    @hours_per_week = seconds_per_week  / 1.hour

    fee = @state.fees.where(Fee.arel_table[:care_time].gt(@hours_per_week)).order(Fee.arel_table[:care_time].asc).first

    unless fee
      fee = @state.fees.order(Fee.arel_table[:care_time].asc).first
    end

    rate = fee.rates.where(Rate.arel_table[:net_income].gt(@account.net_income)).order(Rate.arel_table[:net_income]).first

    @price = case @account.person_count
    when 2
      rate.two_people
    when 3
      rate.three_people
    when 4
      rate.four_people
    when 5
      rate.five_people
    else
      rate.six_people
    end

    @money_to_pay = @price

    show!
  end

  def create
    respond_with Account.create(params[:account])
  end
end
