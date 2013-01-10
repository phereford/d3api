module D3api
  class Artisan < BaseModel
    include D3api::Request

    def initialize(region = :us, artisan_type = 'blacksmith')
      json_response = find(region, artisan_type)

      super json_response
    end

    def find(region, artisan_type)
      get(:us, "data/artisan/#{artisan_type}")
    end
  end
end
