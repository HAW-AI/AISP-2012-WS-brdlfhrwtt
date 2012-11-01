class AccountsController < ResourceController
  def show
    @account = Account.find(params[:id])

    caring_time_seconds = @account.child.groups.map { |g| g.ends_on - g.starts_on }.sum
    caring_time_hours = caring_time_seconds / 3600.0

    @money_to_pay = "Money for #{caring_time_hours} hours of caring"

    super
  end
end
