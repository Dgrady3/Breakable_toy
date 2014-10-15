class UsersController < ApplicationController
  before_filter :require_login

  def index
    @users = User.where.not(id: current_user.id)
  end

  def show
    @user = User.find(params[:id])
    @user_workout_sessions = @user.workout_sessions
    @user_stats = @user.stat
    @user_goals = @user.goal
    @user_friends = @user.friends
  end

  def create
    @user = User.create(user_params)
  end

  def update
    @user = User.find(params[:id])
    @user.assign_attributes(user_params)
    if @user.save
      flash[:notice] = "Updated profile!"
      redirect_to user_path(@user)
    else
      flash[:notice] = "Oops, something went wrong. Please try again!"
      render :edit
    end
  end

  def edit
    @user = current_user
  end

  def destroy
    @user = (current_user)
    @user_workout_session = @user.workout_sessions[0]
    @user_workout_session.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:image, :name, :age, :gender, :location, :occupation, :gym, :about)
  end

   def require_login
    unless current_user
      redirect_to new_user_registration_path
    end
  end
end
