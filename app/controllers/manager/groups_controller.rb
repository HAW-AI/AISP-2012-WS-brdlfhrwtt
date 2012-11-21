class Manager::GroupsController < ResourceController
  belongs_to :kindergarten, shallow: true
  custom_actions :resource => :waitlist

  def index
    # @kindergarten = view_context.current_user.kindergarten
    @kindergarten = Manager.first.kindergarten
    super
  end
end
