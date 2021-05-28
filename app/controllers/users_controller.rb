class RegistrationsController < Devise::RegistrationsController
  def show
    @user = User.find(params[:id])
    @user_events = @user.created_events
  end
end