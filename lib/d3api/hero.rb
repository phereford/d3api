module D3api
  class Hero < BaseModel
    include D3api::Request
    attr_accessor :id, :name, :hero_class, :gender,
                  :level, :hardcore, :last_updated,
                  :items, :active_skills, :passive_skills,
                  :followers

    def initialize(region, battletag_name, battletag_id, hero_id)
      json_response = find(region, battletag_name, battletag_id, hero_id)

      values = super json_response

      set_method(values)
    end

    # stats class
    # progress class
    private
    def find(region, battletag_name, battletag_id, hero_id)
      get(region, "profile/#{battletag_name}-#{battletag_id}/hero/#{hero_id}")
    end

    def set_method(values)
      self.id = values['id']
      self.name = values['name']
      self.hero_class = values['class']
      self.gender = determine_gender(values['gender'])
      self.level = values['level']
      self.hardcore = values['hardcore']
      self.last_updated = Time.at(values['last-updated'])
      self.items ||= D3api::EquippedItemSet
        .new(values['items'])
        .item_set
      self.active_skills ||= D3api::HeroSkills
        .new('active', values['skills']['active'])
        .skill_set
      self.passive_skills ||= D3api::HeroSkills
        .new('passive', values['skills']['passive'])
        .skill_set
      self.followers ||= D3api::HeroFollowerSet
        .new(values['followers'])
        .follower_set
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
