class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :runtime

private
  def runtime
    response.headers['X-Powered-By'] = "HAW-Hamburg, ClubMate, Strawberries, Love"
    response.headers['X-Version'] = "SuperKiGaV delens (en: destructive)"
  end

  def not_authenticated
    redirect_to login_url, notice: 'please log in'
  end
end
