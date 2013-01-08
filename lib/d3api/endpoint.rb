module D3api
  module Endpoint
    def self.path(path, endpoint)
       append_endpoint_to_end_of_path(path, endpoint)
    end

    private
    def self.append_endpoint_to_end_of_path
      path += "/#{endpoint}"
    end
  end
end
