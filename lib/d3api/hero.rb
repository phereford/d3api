module D3api
  class Hero < BaseModel
    include D3api::Request

    def initialize(region, battletag_name, battletag_id, hero_id)
      json_response = find(region, battletag_name, battletag_id, hero_id)

      super json_response
    end

    def find(region, battletag_name, battletag_id, hero_id)
      get(region, "profile/#{battletag_name}-#{battletag_id}/hero/#{hero_id}")
    end
  end
end
