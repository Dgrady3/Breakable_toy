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

  private

  def goal_params
    params.require(:goal).permit(:bench, :squat, :dead_lift, :mile).merge(user: current_user)
  end
end