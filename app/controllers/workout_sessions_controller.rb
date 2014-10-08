class WorkoutSessionsController < ApplicationController
  def index
    @workout_sessions = WorkoutSession.all
  end

  def new
    @workout_session = WorkoutSession.new
  end

  def create
    @workout_session = WorkoutSession.new(workout_params)
    if @workout_session.save
      redirect_to @workout_sessions(current_user) flash[:notice] = "The session has been added!"
    else
      render :new
      flash[:notice] = "Oops, your session could not be saved"
    end


    private

    def workout_params
      params.require(:workout_session).permit(:date_completed, :description)
    end
  end
