class ApplicationController < ActionController::Base
  prepend_before_action :authenticate

  protected

  def authenticate
    @logged_in_user ||= User[session[:logged_in_user_id]]
  end

  def authorize
    unless @logged_in_user.present?
      redirect_to login_url, flash: {error: 'You must be logged in to access this section'}
    end
  end
end
