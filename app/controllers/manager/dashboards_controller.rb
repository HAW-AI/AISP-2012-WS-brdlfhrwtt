class Manager::DashboardsController < Manager::BaseController
  def show
    @kindergarten = Manager.first.kindergarten
  end
end
