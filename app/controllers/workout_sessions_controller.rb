class WorkoutSessionsController < ApplicationController
  def index
    @workout_sessions = WorkoutSession.all
  end

  def new
    @user = (current_user)
    @workout_session = WorkoutSession.new
    @workout_session.workout = Workout.new
    @workout_session.workout.workout_exercise_connectors.build
    Exercise.new
  end

  def create
    @user = (current_user)
    @workout_session = WorkoutSession.new(workout_params)
    if @workout_session.save
      redirect_to user_workout_session_path(current_user), flash[:notice] = "The session has been added!"
    else
      render 'new'
      flash[:notice] = "Oops, your session could not be saved"
    end
  end


    private

    def workout_params
      params.require(:workout_session).permit( :description, :done, :_destroy,
                                                                            workout: [:id, :name, :done, :_destroy,
                                                                            workout_exercise_connector: [:id, :sets, :reps, :rest_time, :done, :_destroy,
                                                                            exercises: [:id, :name, :done, :_destroy]]])
    end
  end

