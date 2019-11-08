class AnswersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_user_listing, only: [ :create, :new, :update]

  def index
    @answers = Answers.all
  end

  def new
    @answer = Answer.new
  end

  def create
      @answer = Answer.new(answer_params)
        if @answer.save
          redirect_to listing_path(@answer.question.listing)
        else
          render :new
      end
  end

  def update
    if @answer.update(answer_params)
      redirect_to @answer
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_user_listing
    id = params[:id]
    @answer = current_user.listings.find_by_id(id)
  end

  def answer_params
    answer_params = params.require(:answer).permit( :question_id, :body)
  end

end