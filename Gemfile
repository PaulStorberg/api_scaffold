# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.2.2'

# Rails
gem 'rails', '~> 7.1.0'

# Auth
gem 'devise'
gem 'omniauth-apple'
gem 'omniauth-google-oauth2'

# Security
gem 'pundit'
gem 'secure_headers'

# Database
gem 'pg'

# GraphQL
gem 'graphql'

# Background Jobs
gem 'sidekiq'
gem 'sidekiq-cron'

# Testing & Development
group :development, :test do
  gem 'brakeman', require: false
  gem 'bullet'
  gem 'bundler-audit', require: false
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pundit-matchers'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-factory_bot'
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
end

# Performance & Caching
gem 'bootsnap', require: false
gem 'redis'

# Logging
gem 'lograge'
