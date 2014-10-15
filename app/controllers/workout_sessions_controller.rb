class WorkoutSessionsController < ApplicationController
  before_filter :require_login
  
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
    @workout_session = WorkoutSession.create(workout_session_params)
    @workout_session = WorkoutSession.all
    if @workout_session[0].save
      flash[:notice] = "The session has been added!"
      redirect_to user_path(current_user)
    else
      flash[:notice] = "Oops, your session could not be saved"
      render 'new'
    end
  end

  private

  def workout_session_params
    workout_params = params.require(:workout_session).permit(
      :"date_completed(1i)",
      :"date_completed(2i)",
      :"date_completed(3i)",
      :description,
      workout_attributes: [
        :_destroy,
        :id,
        :name,
        workout_exercise_connectors_attributes: [
          :_destroy,
          :id,
          :reps,
          :sets,
          :rest_time,
          exercise_attributes: [
            :_destroy,
            :id,
            :name
          ]
        ]
      ]
    ).merge(user: current_user)
  end

  def require_login
    unless current_user
      redirect_to new_user_registration_path
    end
  end
end


