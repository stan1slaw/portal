Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true
  config.web_console.whiny_requests = false
  config.cache_classes = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = true
  config.cache_store = :dalli_store
  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :dalli_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

  end

  # Store uploaded files on the local file system (see config/storage.yml for options)
  config.active_storage.service = :local

  # Don't care if the mailer can't send.



  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::FileUpdateChecker
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
  config.reload_classes_only_on_change = false
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.default_options = {from: 'stas.dudartchik@gmail.com'}
  config.action_mailer.smtp_settings = {
      address:              'smtp.gmail.com',
      port:                 587,
      authentication:       'plain',
      enable_starttls_auto: true,
      user_name:            "stas.dudartchik@gmail.com",
      password:              "cprxogggbamgyouk",
      domain:               'smtp.gmail.com',
      openssl_verify_mode: "none",
  }
end
