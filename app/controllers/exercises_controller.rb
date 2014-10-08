class ExercisesController < ApplicationController
  def index
    @exercises = Exercises.all
  end

  def show
    @exercise = Exercise.find(params[:id])
    @category = @exercise.categorizations[0]
  end
end
