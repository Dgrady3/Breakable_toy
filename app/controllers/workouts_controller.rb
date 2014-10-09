class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @user = current_user
    @workout = Workout.new
    @exer

  end

  def create

    @workout = Workout.create(workout_params)
    if @workout.save
      redirect_to user_workout_path(current_user), flash[:notice] = "The workout has been added!"
    else
      render :new,
      flash[:error] = "Oops, your workout could not be saved"
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:name, :reps, :rest_time, :sets, exercise_attributes: [:id, :name, :done, :_destroy])
  end
end












