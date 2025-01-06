# frozen_string_literal: true

# Base mailer class for handling email delivery
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
