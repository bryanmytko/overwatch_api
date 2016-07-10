require "httparty"
require "dotenv"

Dotenv.load

require "overwatch_api/base_model"
require "overwatch_api/configuration"
require "overwatch_api/connection"
require "overwatch_api/exceptions"
require "overwatch_api/request"
require "overwatch_api/version"

module OverwatchApi
  include HTTParty
  extend Configuration
end
