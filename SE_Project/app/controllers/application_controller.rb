class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  helper_method :logged_in?
end
