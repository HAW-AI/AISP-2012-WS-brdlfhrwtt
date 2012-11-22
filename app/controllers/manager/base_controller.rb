class Manager::BaseController < ApplicationController
  before_filter :require_login, :kindergarten

protected
  def kindergarten
    @kindergarten ||= current_user.try(:kindergarten)
  end
end
