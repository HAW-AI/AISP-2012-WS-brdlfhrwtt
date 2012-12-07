class Manager::BaseController < ApplicationController
  before_filter :require_login
  before_filter { |controller| controller.require_login_as(Manager) }
  before_filter :kindergarten

protected
  def kindergarten
    @kindergarten ||= current_user.try(:kindergarten)
  end
end
