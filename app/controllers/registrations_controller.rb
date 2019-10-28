class RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters

  def configure_permitted_parameters
    added_attrs = [:is_seller, :email, :password]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  private
  
  def after_sign_up_path_for(resource)
    new_user_detail_path
  end 

end