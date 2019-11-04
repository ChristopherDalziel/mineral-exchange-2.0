class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

      def configure_permitted_parameters
        devise_parameter_sanitizer.permit :sign_up, keys: [:is_seller, :email, :password,  user_detail_attributes: [ :first_name, :lastname, :state_id]]
        # devise_parameter_sanitizer.permit :sign_up, keys: [:is_seller, :email, :password,  user_detail_attributes: [ :first_name ]]
        #   # devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :is_female, :date_of_birth) }
      end
    
      def after_sign_in_path_for(resource)
        if current_user.is_seller == true
          user_details_path
        elsif current_user.is_seller == false
          listings_path
        end
      end

end

# devise_parameter_sanitizer.**permit**(:sign_up, keys: [:username])