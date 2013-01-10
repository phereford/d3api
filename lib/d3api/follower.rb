module D3api
  class Follower < BaseModel
    include D3api::Request

    def initialize(region = :us, follower_type = 'scoundrel')
      json_response = find(region, follower_type)

      super json_response
    end

    def find(region, follower_type)
      get(:us, "data/follower/#{follower_type}")
    end
  end
end
