class Manager::DashboardsController < Manager::BaseController
  def show
    @kindergarten = current_user.kindergarten
    @groups = current_user.kindergarten.try(:groups)
  end
end
