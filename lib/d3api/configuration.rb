module D3api
  module Configuration
    REGIONAL_BASE_URL = {
      :us => 'us.battle.net',
      :eu => 'eu.battle.net',
      :kr => 'kr.battle.net',
      :tw => 'tw.battle.net',
      :ch => 'www.battlenet.com.cn'
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
