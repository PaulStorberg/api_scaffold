# frozen_string_literal: true

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  require 'sidekiq/web'

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  post '/graphql', to: 'graphql#execute'

  # Development only routes
  if Rails.env.development?
    mount Sidekiq::Web => '/sidekiq' # http://localhost:3000/sidekiq
    # ADD YOUR DEVELOPMENT ROUTES HERE
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check
end
