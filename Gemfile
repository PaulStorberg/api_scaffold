source 'https://rubygems.org'

ruby '3.2.2'

# Rails
gem 'rails', '~> 7.1.0'

# Auth
gem 'devise'
gem 'omniauth-apple'
gem 'omniauth-google-oauth2'

# Database
gem 'pg'

# GraphQL
gem 'graphql'

# Background Jobs
gem 'sidekiq'
gem 'sidekiq-cron'

# Authorization
gem 'pundit'

# Testing
group :development, :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
end

# Linting & Security
group :development do
  gem 'brakeman', require: false
  gem 'bullet'
  gem 'bundler-audit', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
end

# Performance & Caching
gem 'bootsnap', require: false
gem 'redis'

# Logging
gem 'lograge'
