require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TestTask
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    
    config.assets.initialize_on_precompile = false
    config.assets.compile = true
    config.secret_key = '-- secret key --'
    
    config.action_mailer.preview_path = "#{Rails.root}/lib/mailer_previews"
    config.action_mailer.delivery_method = :file
    config.action_mailer.file_settings = { :location => Rails.root.join('tmp/mail') }
  end
end
