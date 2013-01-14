module D3api
  class EquippedItem < BaseModel
    EQUIPPED_ITEM_MAPPINGS = {
      :id => 'id',
      :name => 'name',
      :icon => 'icon',
      :display_color => 'displayColor',
      :tooltip_params => 'tooltipParams'
    }

    attr_accessor :location, :name, :icon, :display_color,
                  :tooltip_params, :id

    def initialize(array)
      location = array[0]
      attributes = array[1]

      self.location = location
      set_method(attributes, EQUIPPED_ITEM_MAPPINGS)
    end
  end
end
