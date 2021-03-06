class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
    @events = Event.all
    # @events.each do |event|
    #   event.users.each do |user|
    #     @user_events << event if current_user == user || current_user == event.user
    #     @events_today << event if event.date == Date.today && current_user ==
    #   end
    # end

    all_my_events =  @events.joins(:user_events).where(user_events: {user_id: current_user})
    @past_events = all_my_events.where("date < ?", Date.today)
    @events_today = all_my_events.where("date >= ? ", Date.today)
    @user_friends = current_user.top_3_friends
    # @user_friends = []
    # current_user.friends.first(3) do |friend|
    #   @user_friends << User.find(friend.friend_id)
    # end
  end



    # @events.each do |event|
    #   @user_events << event if current_user == event.user
    # end

  #   if params[:wizard][:morning]
  #     morning_events = Event.where(morning: true)
  #   end

  #   if params[:wizard][:afternoon]
  #     afternoon_events = Event.where(afternoon: true)
  #   end

  #   if params[:wizard][:evening]
  #     evening_events = Event.where(evening: true)
  #   end

  #   events = [morning_events, afternoon_events, evening_events].flatten.compact.sort_by { |event| event.time_of_event}

  #   @grouped_events = events.group_by { |event| event.sport }

  def form
    session[:wizard] = nil
    @model = :wizard
  end
end
