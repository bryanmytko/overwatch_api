module OverwatchApi
  module Request
    require "uri"

    def get(path, options = {})
      response = request(:get, path, options)
      raise OverwatchApi::ResponseError.new(response["message"]) unless response.code == 200
      return response
    end

    private

    def headers
      raise OverwatchApi::NoApiKeyError
        .new("No API key set.") unless OverwatchApi.api_key

      { "X-Mashape-Key" => OverwatchApi.api_key } # @TODO if not on mashape...
    end

    def request(method, path, options = {})
      # @TODO probably only GET requests, but to be determined
      case method
      when :get
        options = { headers: headers, query: options }

        response = OverwatchApi.get(
          URI.encode(endpoint + path),
          options
        )
      else
        raise OverwatchApi::UnsupportedMethodError.new
      end
    end
  end
end
