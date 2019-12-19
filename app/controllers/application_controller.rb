class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?

def after_sign_in_path_for(resource)
    case resource
    when User
    	 root_path
    when Admin
    	 admin_top_path
    end
  end

  def after_sign_up_path_for(resource)
    case resource
    when User
    	 root_path
    when Admin
    	 admin_top_path
    end
  end
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :address, :phone_number, :email])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :address, :phone_number, :email])
  end


end
