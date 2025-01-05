# frozen_string_literal: true

# Performs scheduled daily maintenance tasks
class DailyJob
  include Sidekiq::Job

  def perform(args = {})
    Rails.logger.info "Daily job running with #{args.inspect}"
  end
end
