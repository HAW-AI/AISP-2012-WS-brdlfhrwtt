require 'oauth2'
class OauthsController < ApplicationController
  def oauth
    login_at(params[:provider])
  end

  def callback
    provider = params[:provider]
    begin
    if @user = login_from(provider)
      redirect_to root_url(subdomain:'parent'), :notice => "Logged in from #{provider.titleize}!"
    else
      begin
        @user = create_from(provider)
        reset_session # protect from session fixation attack
        auto_login(@user)
        redirect_to root_url(subdomain:'parent'), :notice => "Logged in from #{provider.titleize}!"
      rescue
        redirect_to root_path, :alert => "Failed to login from #{provider.titleize}!"
      end
    end
    rescue ::OAuth2::Error => e
      p e
      puts e.code
      puts e.description
      puts e.message
      puts e.backtrace
    end
  end
end
