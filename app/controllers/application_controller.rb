class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller? 

	protected 
 
	def after_sign_in_path_for(resource)
    welcome_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sing_up, keys: [:tipo]) 
  end 
end
