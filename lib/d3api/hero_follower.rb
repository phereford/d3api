module D3api
  class HeroFollower
    attr_accessor :follower_type, :slug, :level,
                  :items, :skills

    def initialize(follower_type, attributes)
      follower_type = follower_type
      attributes = attributes

      set_method(follower_type, attributes)
    end

    private
    def set_method(follower_type, attributes)
      self.follower_type = follower_type
      self.slug = attributes['slug']
      self.level = attributes['level']
      self.items ||= EquippedItemSet.new(attributes['items']).item_set
      self.skills = nil
    end
  end
end
