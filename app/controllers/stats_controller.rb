class StatsController < ApplicationController
  
  def new
    @stats = Stat.new
  end

  def create
  @stat = Stat.create(stat_params)
  if @stat.save
      flash[:notice] = "Your current stats have been added!"
      redirect_to user_path(current_user)
    else
      render 'new'
      flash[:notice] = "Oops, your session could not be saved"
    end
  end

  def edit
    @stats = Stat.find(params[:id])
  end

  def update
    @stats = Stat.create(stat_params)
    if @stats.save
      flash[:notice] = "Your current stats have been updated!"
      redirect_to user_path(current_user)
    else
      render 'new'
      flash[:notice] = "Oops, your goals could not be saved"
    end
  end

  private

  def stat_params
      params.require(:stat).permit(:bench, :squat, :dead_lift, :mile).merge(user: current_user)
  end
end

