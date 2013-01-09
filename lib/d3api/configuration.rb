module D3api
  module Configuration
    REGIONAL_BASE_URL = {
      :us => 'https://us.battle.net/api/d3/',
      :eu => 'https://eu.battle.net/api/d3/',
      :kr => 'https://kr.battle.net/api/d3/',
      :tw => 'https://tw.battle.net/api/d3/',
      :ch => 'https://www.battlenet.com.cn/api/d3/'
    }

    DEFAULT_ENDPOINT = REGIONAL_BASE_URL[:us]

    def self.regional_urls
      REGIONAL_BASE_URL
    end

    def self.default_endpoint
      DEFAULT_ENDPOINT
    end
  end
end
