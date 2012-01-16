class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :http_auth
  
  
protected
  
  def http_auth
    authenticate_or_request_with_http_basic() do |username, password|
      username == Settings.http_username && password == Settings.http_password
    end
  end
end
