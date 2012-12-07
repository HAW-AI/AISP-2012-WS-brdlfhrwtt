class Parent::BaseController < ApplicationController
  before_filter :require_login
  before_filter { |controller| controller.require_login_as(Parent) }
end
