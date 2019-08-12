# Preview all emails at http://localhost:3000/rails/mailers/daily_digest_mailer
class DailyDigestMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/daily_digest_mailer/digest_email
  def digest_email
    DailyDigestMailer.digest_email
  end

end
