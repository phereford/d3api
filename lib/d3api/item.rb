module D3api
  class Item < BaseModel
    ITEM_MAPPINGS = {
      :name => 'name',
      :icon => 'icon',
      :tooltip_params => 'tooltipParams',
      :display_color => 'displayColor',
      :required_level => 'requiredLevel',
      :item_level => 'itemLevel',
      :bonus_affixes => 'bonusAffixes',
      :attributes => 'attributes'
    }

    attr_accessor :name, :icon, :tooltip_params, :display_color,
                  :required_level, :item_level, :bonus_affixes,
                  :attributes, :min_dps, :max_dps, :min_attacks_per_second,
                  :max_attacks_per_second, :socket_effects, :salvage

    def initialize(region, item_hash)
      json_response = find(region, item_hash)

      values = super json_response

      set_method(values, ITEM_MAPPINGS)
      set_item(values)
    end

    private
    def find(region, item_hash)
      get(region, "data/item/#{item_hash}")
    end

    def set_item(values)
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
