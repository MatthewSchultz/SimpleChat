class ApplicationController < ActionController::Base
  prepend_before_action :authenticate

  protected

  def authenticate
    @logged_in_user ||= session[:logged_in_user_id]
  end

  def authorize
    unless @logged_in_user.present?
      flash[:error] = "You must be logged in to access this section"
      redirect_to login_url
    end
  end
end
