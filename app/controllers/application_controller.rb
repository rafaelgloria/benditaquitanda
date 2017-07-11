class ApplicationController < ActionController::Base

  include Pundit
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   # This is mandatory if you want to secure as well your app/models
  before_filter :set_current_user

  # This method is required by declarative_authorization on every controller
  #  that is using filter_resource_access (or any other declarative_auth.. mechanism)
  def current_user
    current_usuario
  end

  protected

  def set_current_user
    current_user = current_usuario
  end
end
