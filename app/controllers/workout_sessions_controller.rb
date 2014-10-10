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
    @user = User.find(params[:user_id])
    @workout_session = WorkoutSession.new(workout_session_params)
    if @workout_session.save
      flash[:notice] = "The session has been added!"
      redirect_to user_path(@user) 
    else
      render 'new'
      flash[:notice] = "Oops, your session could not be saved"
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
        :name,
        workout_exercise_connectors_attributes: [
          :reps,
          :sets,
          :rest_time,
          exercise_attributes: [
            :name
          ]
        ]
      ]
    ).merge(user: current_user)
  end
end

