require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GardenController
  class Application < Rails::Application

    config.api_only = false
    config.assets.initialize_on_precompile = false

    ENV.update YAML.load_file('config/application.yml')[Rails.env] rescue {}

    config.autoload_paths << "#{Rails.root}/lib"
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # avoid cors issues between client and api
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        puts "sup", ENV["CLIENT_URL"]
        origins ENV["CLIENT_URL"]
        resource '*',
          :headers => :any,
          :methods => [:get, :post, :delete, :put, :patch, :options],
          :credentials => true
      end
    end
  end
end
