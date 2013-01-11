require 'faraday'
require 'faraday_middleware'

module D3api
  module Connection
    def connection(region)
      @connection = begin
        Faraday.new(:url => D3api::Configuration.regional_urls[region]) do |c|
          c.request :url_encoded
          c.request :json
          c.response :json
          c.adapter Faraday.default_adapter
        end
      end
    end
  end
end
