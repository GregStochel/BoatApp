# frozen_string_literal: true

require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
# require "sprockets/railtie"
require 'rails/test_unit/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Boatapp
  class Application < Rails::Application
    config.middleware.use ActionDispatch::Session::CookieStore,
                          expire_after: 7.days,
                          http_only: true
    config.load_defaults 5.2
    config.api_only = true
    config.eager_load_paths << Rails.root.join('lib')
  end
end
