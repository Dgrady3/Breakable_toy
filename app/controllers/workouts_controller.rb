class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def show
  end

end
