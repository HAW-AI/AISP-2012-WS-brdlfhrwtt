class Manager::BaseController < ApplicationController
  before_filter :require_login
end
