class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
      @question = Question.new(question_params)
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
  end

  def question_params
    question_params = params.require(:question).permit(:subject, :body, :listing_id)
  end

end