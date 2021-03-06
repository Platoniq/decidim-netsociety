require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DecidimApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.meeting_pad_writable_after_hours = ENV.fetch("MEETING_PAD_WRITABLE_AFTER_HOURS", 0).to_i
    config.mock_meeting_id = ENV.fetch('MOCK_MEETING_ID', 5)
  end
end

unless ENV['DISABLE_SENTRY']
  Raven.configure do |config|
    config.dsn = ENV['SENTRY_DSN']
  end
end