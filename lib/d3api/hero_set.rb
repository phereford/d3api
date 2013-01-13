module D3api
  class HeroSet
    attr_accessor :hero_set

    def initialize(array)
      heroes = []
      array.each do |character|
        heroes << character
      end

      set_method(heroes)
    end

    private
    def set_method(heroes)
      self.hero_set = heroes
    end
  end
end
