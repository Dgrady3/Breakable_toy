class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
       flash[:notice] = "The workout has been added!"
       redirect_to workout_path(current_user)
    else
      flash[:notice] = "Oops, your workout could not be saved"
      render :new 
    end
  end

    private

    def workout_params
      params.require(:workout).permit(:date_completed, :description, :sets, :reps, :rest_time)
    end
  end
