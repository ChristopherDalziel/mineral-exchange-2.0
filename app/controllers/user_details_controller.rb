class UserDetailsController < ApplicationController

  def index 
    @user_detail = UserDetail.all
  end

  def new
    @user_detail = UserDetail.new
  end

  def update
    if @user_detail.update(user_detail_params)
      redirect_to @user_detail
    else
      render :edit
    end
  end
  
    
  def create
    user_detail_params = params.require(:user_detail).permit( :user_id, :contact_number, :first_name, :lastname, :address_line_1, :address_line_2, :suburb, :state_id, :postcode )
    @user_detail = UserDetail.new(user_detail_params)

    if @user_detail.save
      redirect_to user_details_path
    else
      render :new
    end

  end

  private 

  def user_detail_params
    user_detail_params = params.require(:user_detail).permit(:user_id, :contact_number, :first_name, :lastname, :address_line_1, :address_line_2, :suburb, :state_id, :postcode)
  end

end