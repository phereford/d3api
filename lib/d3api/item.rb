module D3api
  class Item < BaseModel
    attr_accessor :name, :icon, :tooltip_params, :display_color,
                  :required_level, :item_level, :bonus_affixes,
                  :attributes, :min_dps, :max_dps, :min_attacks_per_second,
                  :max_attacks_per_second, :socket_effects, :salvage

    def initialize(region, item_hash)
      json_response = find(region, item_hash)

      values = super json_response

      set_method(values)
    end

    private
    def find(region, item_hash)
      get(region, "data/item/#{item_hash}")
    end

    def set_method(values)
      self.name = values['name']
      self.icon = values['icon']
      self.tooltip_params = values['tooltipParams']
      self.display_color = values['displayColor']
      self.required_level = values['requiredLevel']
      self.item_level = values['itemLevel']
      self.bonus_affixes = values['bonusAffixes']
      self.attributes = values['attributes']

      unless weapon(values)
        self.min_dps = values['dps']['min']
        self.max_dps = values['dps']['max']
        self.min_attacks_per_second = values['attacksPerSecond']['min']
        self.max_attacks_per_second = values['attacksPerSecond']['max']
      end

      self.salvage = nil
      self.socket_effects = nil
    end

    def weapon(values)
      values['dps'] == nil
    end
  end
end
