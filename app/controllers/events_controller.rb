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
    unless @grouped_events.empty?
      @random_event = @grouped_events[type][0]
    end
  end

  def show
    @event = Event.find(params[:id])
    @event_users = @event.users
    @event_map = Event.where(id: @event.id)
    @event_user = UserEvent.find_by(user: current_user, event: @event)
    @markers = @event_map.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude

        # image_url: helpers.asset_url("REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS")
      }
    end
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.date = Date.tomorrow
    @event.morning = false
    @event.afternoon = false
    @event.evening = false
    if @event.time_of_event.hour > 4 && @event.time_of_event.hour < 12
      @event.morning = true
    elsif @event.time_of_event.hour > 12 && @event.time_of_event.hour < 18
      @event.afternoon = true
    else
      @event.evening = true
    end
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @event = Event.new
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

  def event_params
    params.require(:event).permit(:title, :description, :sport, :address, :date, :time_of_event, :number_of_participants, :morning, :evening, :afternoon)
  end
end
