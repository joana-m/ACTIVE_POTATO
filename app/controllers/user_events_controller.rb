class UserEventsController < ApplicationController
  def create
    @user = current_user
    @event = Event.find(params[:event_id])
    @user_event = UserEvent.create(user_id: @user.id, event_id: @event.id)
    @chatroom = Chatroom.find_by(event: @event)
    unless @chatroom
      @chatroom = Chatroom.new
      @event = Event.find(params[:event_id])
      @chatroom.event = @event
      @chatroom.save
    end
    redirect_to chatroom_path(@chatroom)
  end

  def destroy
    @user_event = UserEvent.find(params[:id])
    @user_event.destroy!

    @event = Event.find(params[:event_id])
    redirect_to event_path(@event)

  end


end
