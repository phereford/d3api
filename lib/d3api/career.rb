module D3api
  class Career < BaseModel
    include D3api::Request

    def initialize(region, battletag_name, battletag_code)
      json_response = find(region, battletag_name, battletag_code)

      super json_response
    end

    def find(region, battletag_name, battletag_code)
      get(region, "profile/#{battletag_name}-#{battletag_code}/")
    end
  end
end
