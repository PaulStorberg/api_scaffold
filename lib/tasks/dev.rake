# frozen_string_literal: true

namespace :dev do
  desc 'Creates sample data for development'
  task sample_data: :environment do
    return unless Rails.env.development?

    puts 'Creating sample users...'
    10.times do
      FactoryBot.create(:user)
      print '.'
    end
    puts "\nCreated #{User.count} users with random emails!"
  end
end
