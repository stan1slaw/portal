class PasswordResetsController < ApplicationController
  def new
  end
  def create
    user = User.find_by_email(params[:email])
    user.sent_password_reset
    redirect_to root_url
  end
end
