source 'https://rubygems.org'

ruby '3.2.2'

# Rails
gem 'rails', '~> 7.1.0'

# Auth
gem 'devise'
gem 'omniauth-google-oauth2'
gem 'omniauth-apple'

# Database
gem 'pg'

# GraphQL
gem 'graphql'
gem 'graphiql-rails', group: :development

# Background Jobs
gem 'sidekiq'
gem 'sidekiq-cron'

# Authorization
gem 'pundit'

# Testing
group :development, :test do
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

# Linting & Security
group :development do
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'brakeman', require: false
  gem 'bundler-audit', require: false
end

# Performance & Caching
gem 'redis'
gem 'bullet', group: :development
gem 'bootsnap', require: false

# Logging
gem 'lograge'
