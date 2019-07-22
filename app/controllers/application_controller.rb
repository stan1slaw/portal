class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?


  def render_403
    render file: 'public/403.html', status: 403
  end
  def render_404
    render file: "public/404.html", status: 404
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :username, :email, :password, :remember_me, :avatar, :privat])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :about, :birthday, :email, :password, :remember_me, :avatar, :privat])
  end

end
