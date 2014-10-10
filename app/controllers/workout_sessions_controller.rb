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
    binding.pry
    @user = (current_user)
    @workout_session = WorkoutSession.new(workout_session_params)
binding.pry
    if @workout_session.save
      redirect_to user_workout_session_path(current_user), flash[:notice] = "The session has been added!"
    else
      render 'new'
      flash[:notice] = "Oops, your session could not be saved"
    end
  end


  private

  def workout_session_params
    params.require(:workout_session).permit(
      :"date_completed(1i)",
      :"date_completed(2i)", 
      :"date_completed(3i)", 
      :description,
      workout_attributes: [ 
        :_destroy, 
        :name,
        :_destroy,
        workout_exercise_connectors_attributes: [
          "1412956089587" => [
            :reps,
            :sets,
            :rest_time,
            exercises: [
              :name
            ]
          ]
        ] 
      ]
    ).merge(user: current_user)
  end


end

