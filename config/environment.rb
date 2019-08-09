# Load the Rails application.
require_relative 'application'
require 'carrierwave/orm/activerecord'
# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :user_name => 'stanislawby',
    :password => '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',
    :domain => 'smtp.gmail.com',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
}
