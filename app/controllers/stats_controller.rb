class StatsController < ApplicationController
  
  def new
    @stats = Stat.new
  end

  def create
 
    @stat = Stat.create(stat_params)
  if @stat.save
      flash[:notice] = "The session has been added!"
      redirect_to user_path(current_user)
    else
      render 'new'
      flash[:notice] = "Oops, your session could not be saved"
    end
  end

  def edit
    @user = current_user
  end

  private

  def stat_params
      params.require(:stat).permit(:bench, :squat, :dead_lift, :mile).merge(user: current_user)
  end
end

