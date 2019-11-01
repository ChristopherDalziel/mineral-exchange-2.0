class AnswersController < ApplicationController

  def index
    @answers = Answers.all
  end

  def new
    @answer = Answer.new
  end

  def create
      # @answer = current_user.answers.create(answer_params)
      @answer = Answer.new(answer_params)
        if @answer.save
          redirect_to questions_path
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

  def answer_params
    answer_params = params.require(:answer).permit( :question_id, :body)
  end


end