module D3api
  class EquippedItemSet
    attr_accessor :item_set

    def initialize(*array)
      equipped_items = []

      array[0].each do |item|
        equipped_items << EquippedItem.new(item)
      end

      set_method(equipped_items)
    end

    private
    def set_method(equipped_items)
      self.item_set = equipped_items
    end
  end
end
