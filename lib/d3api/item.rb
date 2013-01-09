module D3api
  class Item < BaseModel
    include D3api::Request

    def initialize(region, item_hash)
      json_response = find(region, item_hash)

      super json_response
    end

    def find(region, item_hash)
      get(region, "data/item/#{item_hash}")
    end
  end
end
