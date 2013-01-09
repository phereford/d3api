module D3api
  module Request
    include D3api::Connection

    def get(region, path, options={})
      request(region, :get, path, options)
    end

    private
    def request(region, action, path, options)
      response = connection(region).send(action, path) do |request|
        request.body = options[:body] if options[:body]
      end

      response.body.to_json
    end
  end
end
