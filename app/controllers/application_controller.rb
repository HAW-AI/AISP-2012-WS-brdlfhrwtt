class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :runtime

private
  def runtime
    response.headers['X-Powered-By'] = "HAW-Hamburg, ClubMate, Strawberries, Love"
    response.headers['X-Version'] = "SuperKiGaV delens (en: destructive)"
  end
end
