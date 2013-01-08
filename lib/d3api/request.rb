module D3api
  module Request
    include D3api::Connection

    def get(region, path, options={})
      request(region, :get, path, options)
    end

    private
    def request(region, action, path, options)
      connection.url_prefix.hostname = D3api::Configuration.regional_urls[region]

      response = connection.send(action, path) do |request|
        request.body = options[:body] if options[:body]
      end

      response.body
    end
  end
end
