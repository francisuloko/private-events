class UsersController < ApplicationController
  def show
    @created_events = current_user.created_events

    @future_events = current_user.attended_events.future
    @past_events = current_user.attended_events.past
  end
end
