class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @created_events = @user.created_events

    @future_events = @user.attended_events.where('event_date > ?', Date.today).order('event_date ASC')
    @past_events = @user.attended_events.where('event_date <  ?', Date.today).order('event_date DESC')
  end
end
