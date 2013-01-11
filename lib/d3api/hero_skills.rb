module D3api
  class HeroSkills
    attr_accessor :skill_set

    def initialize(skill_type, *attributes)
      skill_set = []
      attributes[0].each do |attribute|
        skill_set << Skill.new(skill_type, attribute)
      end

      set_method(skill_set)
    end

    private
    def set_method(skill_set)
      self.skill_set = skill_set
    end
  end
end
