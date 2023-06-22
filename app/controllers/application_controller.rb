class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_theme
  before_action :configure_permitted_parameters, if: :devise_controller?
  skip_before_action :authenticate_user!, only: %i[home]
  before_action :notifications

  def home; end

  def notifications
    if current_user
      current_user.notifications.mark_as_read!
      @notifications = current_user.notifications.reverse
    end
  end

  protected

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :photo, :bio])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :photo, :bio])
  end

  def set_theme
    if params[:theme].present?
      theme = params[:theme].to_sym
      cookies[:theme] = theme
      redirect_to(request.referrer || root_path)
    else
      cookies[:theme] = 'dark' #switch color mode doesnt work because of this code
    end
  end
end
