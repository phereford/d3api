module D3api
  class Career < BaseModel
    def self.find(region, battletag_name, battletag_code)
      get(:us, "profile/#{battletag_name}-#{battletag_code}/")
    end
  end
end
