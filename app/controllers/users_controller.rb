class UsersController < Devise::RegistrationsController
  def show
    @user = User.find(params[:id])
    @created_events = @user.created_events
    @invitations = @user.attended_events
  end
end
