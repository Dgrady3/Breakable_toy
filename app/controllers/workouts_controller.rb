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
    @workout = Workout.new
    if @workout.save
      redirect_to @workout_path(current_user) flash[:notice] = "The workout has been added!"
    else
      render :new
      flash[:notice] = "Oops, your workout could not be saved"
    end
  end

    private

    def workout_params
      params.require(:workout).permit(:date_completed, :description, :sets, :reps, :rest_time)
    end
  end
