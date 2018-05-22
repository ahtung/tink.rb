require "faraday"
require "faraday_middleware"

module Tink
  # Client
  class Client
    def self.connection
      @connection ||= Faraday.new(url: "https://api.tink.se") do |config|
        config.request :json
        config.request :multipart
        config.adapter Faraday.default_adapter
      end
    end
  end
end
