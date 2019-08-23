require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module OmniauthLab
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.active_record.raise_in_transactional_callbacks = true

    # Commenting out this next line because it causes Chrome to cache the HTTPS protocol for the localhost
    # domain, forcing students to have to clear the cache to work

    config.force_ssl = true
  end
end
