class SessionsController < ApplicationController
  def new
    if @logged_in_user.present?
      redirect_to root_url and return
    end
    @session = Session.new()
  end

  def create
    # Prevent session fixation:
    reset_session
    
    login_info = Session.new(login_params)
    if @logged_in_user = User.find_by(email_address: login_info.email_address).try(:authenticate, login_info.password)
      session[:logged_in_user_id] = @logged_in_user.id
      redirect_to root_url
    else
      redirect_to login_url, flash: {error: 'Invalid email/password'}
    end
  end

  def destroy
    reset_session
    redirect_to login_url
  end

  protected

  def login_params
    params.require(:session).permit(
      :email_address,
      :password
    )
  end
end
