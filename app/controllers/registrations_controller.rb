class RegistrationsController < Devise::RegistrationsController

  # Manually created entered devise controller

  before_action :configure_permitted_parameters

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up, keys: [:is_seller, :email, :password,  user_detail_attributes: [ :first_name, :lastname, :state_id]]
    devise_parameter_sanitizer.permit :account_update, keys: [:is_seller, :email, :password,  user_detail_attributes: [ :first_name, :lastname, :state_id]]
  end

  def new
    super
  end

  def create
    super

  end

  private
  # After user signs up direct them depending on if they're a seller or a buyer
  def after_sign_up_path_for(resource)
    if current_user.is_seller == true
      root_path
    else
      listings_path
    end
  end 

end
