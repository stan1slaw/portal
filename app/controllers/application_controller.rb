class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  def render_403
    render file: 'public/403.html', status: 403
  end
  def render_404
    render file: "public/404.html", status: 404
  end
  private

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def favorite_text
    @favorite_exists ? "UnFavorite" : "Favorite"
  end
  helper_method :favorite_text
  protected

  def extract_locale
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end

  def default_url_options
    { locale: I18n.locale }
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :username, :email, :password, :remember_me, :avatar, :privat])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :about, :birthday, :email, :password, :remember_me, :avatar, :privat])
  end

end
