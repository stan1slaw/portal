require_relative 'boot'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.i18n.available_locales = [:en, :ru]
    config.i18n.default_locale = :en
    config.generators do |g|
      g.test_framework :rspec,
                       fixtures: true,
                       view_specs: false,
                       helper_specs: false,
                       routing_specs: false,
                       controller_specs: true,
                       request_specs: true
      g.fixture_replacement :factory_bot, dir: "spec/factories"
    end
    config.active_job.queue_adapter = :sidekiq
    config.assets.initialize_on_precompile = false
    config.assets.precompile += %w[active_admin.css active_admin.js print.css]
    config.assets.precompile += %w[active_admin/print.css]
  end
end

