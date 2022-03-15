class EventsController < ApplicationController
  before_action :persist_search_params, only: :index
  def index
    # events_a = []
    # session[:wizard][:sport].each do |sport|
    @sports = session[:wizard]["sport"].map { |sport| sport.capitalize }
      if session[:wizard]["morning"]
        morning_events = Event.where(morning: true, sport: @sports)
      end

      if session[:wizard]["afternoon"]
        afternoon_events = Event.where(afternoon: true, sport: @sports)
      end

      if session[:wizard]["evening"]
        evening_events = Event.where(evening: true, sport: @sports)
      end
      events_a = [morning_events, afternoon_events, evening_events]
    # end
    events = events_a.flatten.compact.sort_by { |event| event.time_of_event}
    @grouped_events = events.group_by { |event| event.sport }
    type = @grouped_events.keys[0]
    @random_event = @grouped_events[type][0]
  end

  def show
    @event = Event.find(params[:id])
    @event_users = @event.users
    @event_map = Event.where(id: @event.id)
    @markers = @event_map.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude

        # image_url: helpers.asset_url("REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS")
      }
    end

    @event_user = UserEvent.find_by(user: current_user, event: @event)
  end


  private

  def persist_search_params
    unless session[:wizard]
      session[:wizard] = {}
    end
    session[:wizard]["sport"] ||= params[:sport]
    session[:wizard]["morning"] ||= params[:wizard].try(:[], :morning)
    session[:wizard]["afternoon"] ||= params[:wizard].try(:[], :afternoon)
    session[:wizard]["evening"] ||= params[:wizard].try(:[], :evening)
  end
end
