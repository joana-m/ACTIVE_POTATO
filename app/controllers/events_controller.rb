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
  end
end
