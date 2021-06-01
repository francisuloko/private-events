class UsersController < ApplicationController
  def show
    @created_events = current_user.created_events

    @future_events = current_user.attended_events.where('event_date > ?', Date.today).order('event_date ASC')
    @past_events = current_user.attended_events.where('event_date <  ?', Date.today).order('event_date DESC')
  end
end
