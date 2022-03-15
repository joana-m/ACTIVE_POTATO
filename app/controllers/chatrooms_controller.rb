class ChatroomsController < ApplicationController
  def index
    @chatrooms = current_user.chatrooms.uniq
  end

  def show
    @chatrooms = current_user.chatrooms
    @chatroom = Chatroom.includes(:messages).find(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.new
    @sender = current_user
    @receiver = User.find(params[:user_id])
    @chatroom.sender = @sender
    @chatroom.receiver = @receiver
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    end
  end
end
