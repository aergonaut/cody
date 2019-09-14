# typed: strict
if ENV["RAVEN_DSN"]
  Raven.configure do |config|
    config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
  end
end
