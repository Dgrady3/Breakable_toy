class GoalsController < ApplicationController

  def new
    @goals = Goal.new
  end

  def create
    @goal = Goal.create(goal_params)
    if @goal.save
      flash[:notice] = "Your Goals were successfully updated!"
      redirect_to user_path(current_user)
    else
      render 'new'
      flash[:notcie] = "Uh oh, please try again!"
    end
  end

  def edit
    @goals = Goal.find(params[:id])
  end

  def update
    @goals = Goal.create(stat_params)
    if @goals.save
      flash[:notice] = "Your current goals have been updated!"
      redirect_to user_path(current_user)
    else
      flash[:notice] = "Oops, your goals could not be saved"
      render 'new'
    end
  end


  private

  def goal_params
    params.require(:goal).permit(:bench, :squat, :dead_lift, :mile).merge(user: current_user)
  end

  def require_login
    unless current_user
      redirect_to new_user_registration_path
    end
  end
end
