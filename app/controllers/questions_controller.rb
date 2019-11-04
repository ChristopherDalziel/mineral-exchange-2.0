class QuestionsController < ApplicationController

      # before_action :authenticate_user!
      # before_action :set_question, only: [ :show, :create ]
      # before_action :set_user_question, only: [ :edit, :update, :destroy ]

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
      @question = Question.new(question_params)
      # @question = current_user.question.create(question_params)
        if @question.save
          redirect_to listings_path
        else
          render :new
      end
  end

  def update
    if @question.update(question_params)
      redirect_to @question
    else
      render :edit
    end
  end

  def destroy
    @question.destroy(question_params)
    redirect_to listings_path
  end

  private

  def set_question
    id = params[:id]
    @question = Question.find(id)
  end

  def set_user_question
    id = params[:id]
    @question = questions.find_by_id(id)

    if @question == nil
      redirect_to listings_path
    end
  end

  def question_params
    question_params = params.require(:question).permit(:subject, :body, :listing_id)
  end

end