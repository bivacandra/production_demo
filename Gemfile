# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'jbuilder', '~> 2.7'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.0.4', '>= 6.0.4.7'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'

# capistrano
gem 'capistrano', '~> 3.11'
gem 'capistrano-passenger', '~> 0.2.0'
gem 'capistrano-rails', '~> 1.4'
gem 'capistrano-rbenv', '~> 2.1', '>= 2.1.4'

# datadog
# gem 'ddtrace', require: 'ddtrace/auto_instrument'

# sidekiq
gem 'sidekiq'

# redis
gem 'redis'

# google cloud pubsub
gem 'google-cloud-pubsub'

gem 'bootsnap', '>= 1.4.2', require: false

gem 'dotenv-rails'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  # unit test
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  # gem 'faker'
  # gem 'database_cleaner'
end

group :development do
  gem 'capistrano-sidekiq'
  gem 'listen', '~> 3.2'
  gem 'pry'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
