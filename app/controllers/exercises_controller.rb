class ExercisesController < ApplicationController
  before_filter :require_login

  def index
    @exercises = Exercises.all
  end

  def show
    @exercise = Exercise.find(params[:id])
    @category = @exercise.categorizations[0]
  end

  private

  def require_login
    unless current_user
      redirect_to new_user_registration_path
    end
  end
end
