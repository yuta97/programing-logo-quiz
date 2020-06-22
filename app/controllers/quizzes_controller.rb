class QuizzesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :correct_user, only: [:edit, :destroy]

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id]) 
  end

  def new
    @quiz = current_user.quizzes.build
  end

  def create
    @quiz = current_user.quizzes.build(quiz_params)
    if @quiz.save
      redirect_to @quiz
    else
      render :new
    end
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def update
    @quiz = Quiz.find(params[:id])

    if @quiz.update(quiz_params)
      redirect_to @quiz
    else
      render :edit
    end
  end

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy

    redirect_to quizzes_url
  end

  private

  def quiz_params
    params.require(:quiz).permit(:img, :choice1, :choice2, :choice3, :choice4, :answer)
  end

  def correct_user
    @quiz = current_user.quizzes.find_by(id: params[:id])
    unless @quiz
      redirect_to root_url
    end
  end
end
