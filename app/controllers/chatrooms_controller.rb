class ChatroomsController < ApplicationController
  def index
    @chatrooms = current_user.chatrooms
  end

  def show
    @chatroom = Chatroom.includes(:messages).find(params[:id])
    @message = Message.new
  end
end
