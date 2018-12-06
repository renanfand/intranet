class ApplicationController < ActionController::Base
#include CanCan::ControllerAdditions
  #rescue_from CanCan::AccessDenied do |exception|
  #  redirect_to root_url, :alert => exception.message
  #end
  before_action :authenticate_user!#, :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

#  protected

#  def configure_permitted_parameters
#    devise_parameter_sanitizer.for(:sign_up, keys: [:name])
#  end
rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden }
      format.html { redirect_to root_url, :alert => exception.message }
    end
  end

end
