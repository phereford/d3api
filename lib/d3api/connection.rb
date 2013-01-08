require 'faraday'
require 'faraday_middleware'

module D3api
  module Connection
    def connection
      @connection ||= begin
        Faraday.new(url: D3api::Configuration.default_endpoint) do |c|
          c.request :url_encoded
          c.request :json
          c.response :json
          c.response :logger
          c.adapter Faraday.default_adapter
        end
      end
    end
  end
end
