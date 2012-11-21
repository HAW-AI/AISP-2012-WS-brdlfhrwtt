class Parent::BaseController < ApplicationController
  before_filter :require_login
end
