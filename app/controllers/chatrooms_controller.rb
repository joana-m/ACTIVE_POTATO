class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.includes(:messages)
  end
  def show
    @chatroom = Chatroom.includes(:messages).find(params[:id])
    @message = Message.new
  end
end
