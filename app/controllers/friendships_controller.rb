class FriendshipsController < ApplicationController

  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      flash[:notice] = "Added friend."
      redirect_to users_path
    else
      flash[:notice] = "This user is already your friend."
      redirect_to users_path
    end
  end

  def destroy
    @friendship = current_user.friendships.find_by(user_id: params[:id]) 
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to user_path
  end
end