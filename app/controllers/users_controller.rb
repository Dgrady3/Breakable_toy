class UsersController < ApplicationController

  def show
    
    @user = User.find(params[:id])
    @user_workout_sessions = @user.workout_sessions 
    @user_stats = @user.stats

  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Updated profile!"
      binding.pry
      redirect_to user_path(@user)
    else
      render :edit
      flash[:notice] = "Oops, something went wrong. Please try again!"
    end
  end
  
  def edit
    @user = current_user
    @workout_sessions = WorkoutSession.find(params[:id])
  end

  def destroy
    @user = (current_user)
    @user_workout_session = @user.workout_sessions[0]
    @user_workout_session.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:image, :first_name, :last_name)
  end
end