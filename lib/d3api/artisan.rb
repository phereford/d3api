module D3api
  class Artisan < BaseModel
    include D3api::Request

    def initialize(region, artisan_type)
      json_response = find(region, artisan_type)

      super json_response
    end

    def find(region, artisan_type)
      get(:us, "data/artisan/#{artisan_type}")
    end
  end
end
