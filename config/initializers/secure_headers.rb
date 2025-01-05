# frozen_string_literal: true

SecureHeaders::Configuration.default do |config|
  config.x_frame_options = 'DENY'
  config.x_content_type_options = 'nosniff'
  config.x_xss_protection = '1; mode=block'
  config.x_download_options = 'noopen'
  config.x_permitted_cross_domain_policies = 'none'
  config.referrer_policy = %w[origin-when-cross-origin strict-origin-when-cross-origin]

  # Configure CSP for API
  config.csp = {
    default_src: ["'none'"],
    connect_src: ["'self'"],
    img_src: ["'self'"],
    manifest_src: ["'self'"],
    style_src: ["'self'"],
    script_src: ["'self'"],
    base_uri: ["'self'"],
    form_action: ["'self'"],
    frame_ancestors: ["'none'"]
  }

  # Enable HSTS with a 1 year max-age
  config.hsts = "max-age=#{1.year.to_i}; includeSubDomains"

  # Add report-only headers for testing in development
  if Rails.env.development?
    config.csp_report_only = config.csp.merge(
      report_uri: ['/csp_report']
    )
  end
end
