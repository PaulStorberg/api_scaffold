# frozen_string_literal: true

namespace :dev do
  desc 'Seed development data'
  task sample_data: :environment do
    if Rails.env.development?
      # Create test users
      5.times do |i|
        User.create!(
          email: "user#{i}@example.com",
          password: 'password123',
          password_confirmation: 'password123'
        )
      end

      puts "Created #{User.count} users"
    else
      puts 'This task can only be run in development'
    end
  end
end
