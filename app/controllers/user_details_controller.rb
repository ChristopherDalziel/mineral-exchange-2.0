class UserDetailsController < ApplicationController

  def index 
    @user_detail = User_detail.all
  end

  def new
    @user_detail = User_detail.new
  end

  def update
    if @user_detail.update(user_detail_params)
      redirect_to @user_detail
    else
      render :edit
    end
  end
  
    
  def create
    user_detail_params = params.require(:user_detail).permit( :user_id, :phone, :name, :address )

    @user_detail = User_details.new(user_detail_params)

    if @user_detail.save
      redirect_to @listing
    else
      render :new
    end

  end

  def user_detail_params
    user_detail_params = params.require(:user_detail).permit(:user_id, :phone, :name, :address)
  end

end