class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name, :phone_number])
    end

    rescue_from CanCan::AccessDenied do |exception|
        redirect_to root_path, alert: exception.message
      end
end
