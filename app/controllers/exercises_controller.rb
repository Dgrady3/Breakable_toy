class ExercisesController < ApplicationController
  def index
    @exercises = Exercises.all
  end
end
