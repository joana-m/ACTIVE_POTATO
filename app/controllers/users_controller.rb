class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @events = @user.joined_events.where("date < ?", Date.today)
  end
end
