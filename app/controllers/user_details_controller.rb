class UserDetailsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_user_detail, only: [ :show, :edit, :update, :destroy ]

  def index 
    # @user_detail = UserDetail.all
    @user_detail = current_user.user_detail
  end

  def edit
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
    @user_detail = UserDetail.new(user_detail_params)
    @user_detail.user_id = current_user.id
    if @user_detail.save
      redirect_to user_details_path
    else
      render :new
    end

  end

  private 

  def set_user_detail
    id = params[:id]
    @user_detail = current_user.find(id)
  end

  def set_user_user_detail
    id = params[:id]
    
    @user_detail = current_user.user_detail
  end

  def user_detail_params
    user_detail_params = params.require(:user_detail).permit(:user_id, :contact_number, :first_name, :lastname, :address_line_1, :address_line_2, :suburb, :state_id, :postcode)
  end

end