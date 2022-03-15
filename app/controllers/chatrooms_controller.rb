class ChatroomsController < ApplicationController
  def index
    @chatrooms = current_user.chatrooms.uniq
  end

  def show
    @chatrooms = current_user.chatrooms
    @chatroom = Chatroom.includes(:messages).find(params[:id])
    @message = Message.new
  end
end
