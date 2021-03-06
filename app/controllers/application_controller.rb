class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :runtime

protected
  def require_login_as(klass)
    unless (current_user.instance_of?(klass))
      raise ActionController::RoutingError.new('Not Found')
    end
  end

private
  def runtime
    response.headers['X-Powered-By'] = "HAW-Hamburg, ClubMate, Strawberries, Love"
    response.headers['X-Version'] = "SuperKiGaV delens (en: destructive)"
  end

  def not_authenticated
    redirect_to login_url, notice: 'please log in'
  end

  def page_after_login
    if current_user.is_a? Manager
      root_url(subdomain:'manager')
    else
      root_url(subdomain:'parent')
    end
  end
end
