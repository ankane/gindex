require "bundler/setup"
require "combustion"
Bundler.require(:default)
require "minitest/autorun"

Combustion.path = "test/internal"
Combustion.initialize! :active_record do
  config.load_defaults Rails::VERSION::STRING.to_f
end
