class DailyDigestWorker
  include Sidekiq::Worker

  def perform
    User.find_each do |user|
      puts user.email
      DailyDigestMailer.digest_email(user)
      puts 'done'
    end
  end
end
