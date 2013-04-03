module D3api
  class Hero < BaseModel
    HERO_MAPPINGS = {
      :id => 'id',
      :name => 'name',
      :hero_class => 'class',
      :level => 'level',
      :hardcore => 'hardcore',
      :paragon_level => 'paragonLevel'
    }

    attr_accessor :id, :name, :hero_class, :gender,
                  :level, :hardcore, :paragon_level, :last_updated,
                  :items, :active_skills, :passive_skills,
                  :followers, :stats

    def initialize(region, battletag_name, battletag_id, hero_id)
      json_response = find(region, battletag_name, battletag_id, hero_id)

      values = super json_response

      set_method(values, HERO_MAPPINGS)
      set_hero(values)
    end

    # stats class
    # progress class
    private
    def find(region, battletag_name, battletag_id, hero_id)
      get(region, "profile/#{battletag_name}-#{battletag_id}/hero/#{hero_id}")
    end

    def set_hero(values)
      self.gender = determine_gender(values['gender'])
      self.last_updated = Time.at(values['last-updated'])
      self.items ||= D3api::EquippedItemSet
        .new(values['items'])
        .item_set
      self.active_skills ||= D3api::HeroSkillSet
        .new('active', values['skills']['active'])
        .skill_set
      self.passive_skills ||= D3api::HeroSkillSet
        .new('passive', values['skills']['passive'])
        .skill_set
      self.followers ||= D3api::HeroFollowerSet
        .new(values['followers'])
        .follower_set
      self.stats ||= D3api::HeroStats
        .new(values['stats'])
    end

    def determine_gender(gender)
      if gender == 0
        'Male'
      else
        'Female'
      end
    end
  end
end
