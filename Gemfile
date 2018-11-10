source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'figaro'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'pundit'
gem 'slim-rails', '~> 3.2'

# # Authentication
gem 'devise'
# gem 'omniauth-facebook'
# gem 'simple_form'
# gem 'sidekiq'
# gem 'high_voltage'
# gem 'redis-namespace'
# gem 'redis-rails'
# gem 'kaminari'
#
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'faker'
  gem 'pry-rails'
  gem 'factory_bot_rails', '~> 4.11.0'
  gem 'rspec-rails', '~> 3.8.0'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.  gem 'meta_request'
  gem 'web-console', '>= 3.3.0'
  gem 'meta_request'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'rubocop', require: false
  gem 'awesome_print'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec'
end

group :test do
  # gem 'vcr'
  gem 'webmock'
  gem 'capybara', '~> 2.15.4'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'launchy', '~> 2.4.3'
  gem 'shoulda-matchers',
      git: 'https://github.com/thoughtbot/shoulda-matchers.git',
      branch: 'rails-5'
  gem 'rails-controller-testing' # If you are using Rails 5.x
  gem "rspec_junit_formatter"
  gem 'pundit-matchers', '~> 1.6.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
