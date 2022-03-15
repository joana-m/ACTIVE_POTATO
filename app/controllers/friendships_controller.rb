class FriendshipsController < ApplicationController
  def index
    @friendships = current_user.friends
    @non_friends = User.where.not(id: @friendships.pluck(:friend_id)).where.not(id: current_user.id)
    @chatroom = Chatroom.new
  end

  def create
    # @friendships = current_user.friends
    # @non_friends = User.where.not(id: @friendships.pluck(:friend_id))
    friend = User.find(params[:user_id])
    @friendship = current_user.befriend(friend)
    redirect_to request.referrer
  end

  def destroy
  end
end
