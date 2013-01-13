module D3api
  class EquippedItem
    attr_accessor :location, :name, :icon, :display_color,
                  :tooltip_params, :id

    def initialize(array)
      location = array[0]
      attributes = array[1]

      set_method(location, attributes)
    end

    private
    def set_method(location, attributes)
      self.location = location
      self.id = attributes['id']
      self.name = attributes['name']
      self.icon = attributes['icon']
      self.display_color = attributes['displayColor']
      self.tooltip_params = attributes['tooltipParams']
    end
  end
end
