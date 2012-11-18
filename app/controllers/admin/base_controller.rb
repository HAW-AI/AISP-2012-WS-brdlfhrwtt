class Admin::BaseController < ApplicationController
  before_filter :authenticate

private
  def authenticate
    authenticate_or_request_with_http_basic("Delens!") do |username, password|
      username == 'ci' && password == 'joe'
    end
  end
end
