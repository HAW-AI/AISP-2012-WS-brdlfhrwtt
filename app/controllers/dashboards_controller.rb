class DashboardsController < ApplicationController
  def show
    flash[:notice] = current_user.username
  end

  helper_method :current_user
end
