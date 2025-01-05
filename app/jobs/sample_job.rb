# frozen_string_literal: true

# Example job for demonstrating Sidekiq background processing
class SampleJob
  include Sidekiq::Job

  # Run the following in the Rails console to test your sidekiq is working:
  # SampleJob.perform_async("test", 123)
  # SampleJob.perform_in(5.minutes, "test", 123)

  def perform(*args)
    # Background work here
    Rails.logger.info "Sample job running with #{args.inspect}"
  end
end
