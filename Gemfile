source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
gem 'acts_as_votable', '~> 0.12.0'
gem 'paperclip'
gem "font-awesome-rails"
gem 'seed_dump'
# Use postgresql as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'inherited_resources', git: 'https://github.com/activeadmin/inherited_resources'
gem 'activeadmin', git: 'https://github.com/activeadmin/activeadmin'
gem 'autoprefixer-rails'
gem 'bootstrap'
gem 'elasticsearch-model', git: 'git://github.com/elastic/elasticsearch-rails.git', branch: 'master'
gem 'elasticsearch-rails', git: 'git://github.com/elastic/elasticsearch-rails.git', branch: 'master'
gem 'searchkick'
gem 'jquery-rails'
gem 'sass-rails'
gem 'chosen-rails'
gem 'filterrific'
gem 'simple_form'
gem 'sidekiq'
gem 'sidetiq'
gem 'sinatra'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'mini_racer', platforms: :ruby
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
gem 'rails-i18n', '~> 5.1'
# Use Redis adapter to run Action Cable in production
 gem 'redis'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.13'
gem "fog-aws"
gem 'carrierwave', '>= 2.0.0.rc', '< 3.0'
gem 'mini_magick'
gem 'devise'
gem 'webpacker'
gem 'react-rails'
gem 'dalli'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'omniauth-linkedin'
source 'http://insecure.rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
  # add the line below
  gem 'rails-assets-chosen'
end

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'
gem "mini_magick"
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
group :production do
  gem 'pg'
  gem 'rails_12factor'
end
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails', "~> 4.10.0"
  gem 'guard-rspec'
  gem 'rails-controller-testing'
  gem 'webdrivers'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop', require: false
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'capybara'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'webdrivers'
  # Easy installation and use of chromedriver to run system tests with Chrome
end

# Windows does not include zoneinfo files, so  the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
