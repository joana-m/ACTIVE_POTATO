class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    other_person = @chatroom.other_person(current_user)
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: { message: @message })
      )
      if other_person.respond_to? :length
        other_person.each do |person|
          NotificationChannel.broadcast_to(
            person,
            {
              unread_count: person.unread_messages,
              chatroom_id: @chatroom.id,
              unread_chatroom_count: @chatroom.messages.where(user: current_user, read: false).count,
              message_content: @message.content
            }
          )
        end
      else
        NotificationChannel.broadcast_to(
          other_person,
          {
            unread_count: current_user.unread_messages,
            chatroom_id: @chatroom.id,
            unread_chatroom_count: @chatroom.messages.where(user: current_user, read: false).count,
            message_content: @message.content
          }
        )
      end
      head :ok
    else
      render "chatrooms/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
