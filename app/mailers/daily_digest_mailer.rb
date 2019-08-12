class DailyDigestMailer < ApplicationMailer
  default from: "stas.dudartchik@gmail.com"
  def digest_email(user)
   @user = User.first
   mail(to: @user.email, subject: "Movie Daily Digest")
  end
end
