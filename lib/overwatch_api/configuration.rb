module OverwatchApi
  module Configuration
    attr_accessor :endpoint
    attr_accessor :api_key

    DEFAULT_ENDPOINT = "" # @TODO TBD
    DEFAULT_API_KEY = ENV["OVERWATCH_API_KEY"]

    def self.extended(base)
      base.reset
    end

    def reset
      self.endpoint = DEFAULT_ENDPOINT
      self.api_key = DEFAULT_API_KEY
    end

    def configure
      yield self
    end
  end
end
