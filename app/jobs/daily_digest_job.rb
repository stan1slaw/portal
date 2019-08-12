class DailyDigestJob < ApplicationJob
  queue_as :default

  def perform
      DailyDigestMailer.digest_email(user).deliver
  end
end