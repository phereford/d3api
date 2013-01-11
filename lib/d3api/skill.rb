module D3api
  class Skill
    attr_accessor :skill_type, :skill_slug, :skill_name, :skill_icon,
                  :skill_tooltip_url, :skill_description,
                  :skill_simple_description, :rune_slug, :rune_type,
                  :rune_name, :rune_description, :rune_simple_description,
                  :rune_tooltip_params, :rune_order

    def initialize(skill_type, attributes)
      skill_type = skill_type
      skill = attributes['skill']
      rune =  attributes['rune']

      set_method(skill_type, skill, rune)
    end

    private
    def set_method(skill_type, skill, rune)
      self.skill_type = skill_type
      self.skill_slug = skill['slug']
      self.skill_name = skill['name']
      self.skill_icon = skill['icon']
      self.skill_tooltip_url = skill['tooltipUrl']
      self.skill_description = skill['description']
      self.skill_simple_description = skill['simpleDescription']

      if skill_type == 'active'
        self.rune_slug = rune['slug']
        self.rune_type = rune['type']
        self.rune_name = rune['name']
        self.rune_description = rune['description']
        self.rune_simple_description = rune['simpleDescription']
        self.rune_tooltip_params = rune['tooltipParams']
        self.rune_order = rune['order']
      end
    end
  end
end
