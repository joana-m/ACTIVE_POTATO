class EventsController < ApplicationController

  def index
    if params[:wizard][:morning]
      morning_events = Event.where(morning: true)
    end

    if params[:wizard][:afternoon]
      afternoon_events = Event.where(afternoon: true)
    end

    if params[:wizard][:evening]
      evening_events = Event.where(evening: true)
    end

    events = [morning_events, afternoon_events, evening_events].flatten.compact.sort_by { |event| event.time_of_event}

    @grouped_events = events.group_by { |event| event.sport }
    type = @grouped_events.keys[0]
    @random_event = @grouped_events[type][0]
  end

  def show
    @event = Event.find(params[:id])
    @event_users = @event.user_events.map {|user_event| user_event.user}
    @event_map = Event.where(id: @event.id)
    @markers = @event_map.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude

        # image_url: helpers.asset_url("REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS")
      }
    end
  end
end
