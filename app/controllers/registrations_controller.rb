class RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters

  def configure_permitted_parameters
    # added_attrs = [:is_seller, :email, :password]
    devise_parameter_sanitizer.permit :sign_up, keys: [:is_seller, :state_id, :email, :password,  user_detail_attributes: [ :first_name, :lastname, :state_id ]]
    devise_parameter_sanitizer.permit :account_update, keys: [:is_seller, :email, :password,  user_detail_attributes: [ :first_name, :lastname, :state_id]]
  end

  def new
    super
  end

  def create
    super
  end

  private

  def after_sign_up_path_for(resource)
    root_path
  end 

  # def after_sign_in_path_for(resource)
  #   if resource.role == "customer"
  #     redirect_to customer_dashboard_path
  #   elsif resource.role == "supplier"
  #    redirect_to supplier_dashboard_path
  #   end

end
