module D3api
  class Career < BaseModel
    attr_accessor :last_hero_played, :heroes, :last_updated,
                  :artisans, :hardcore_artisans, :monster_kills,
                  :elite_kills, :hardcore_monster_kills,
                  :barbarian_time_played, :demon_hunter_time_played,
                  :monk_time_played, :witch_doctor_time_played,
                  :wizard_time_played, :fallen_heroes, :battle_tag,
                  :progression, :hardcore_progression

    def initialize(region, battletag_name, battletag_code)
      json_response = find(region, battletag_name, battletag_code)

      values = super(json_response)

      set_method(values)

    end

    private
    def find(region, battletag_name, battletag_code)
      get(region, "profile/#{battletag_name}-#{battletag_code}/")
    end

    def set_method(values)
      self.last_hero_played = values['lastHeroPlayed']
      self.heroes ||= D3api::HeroSet.new(values['heroes']).hero_set
      self.last_updated = Time.at(values['lastUpdated'])
      self.artisans = values['artisans']
      self.hardcore_artisans = values['hardcoreArtisans']
      self.monster_kills = values['kills']['monsters']
      self.elite_kills = values['kills']['elites']
      self.hardcore_monster_kills = values['kills']['hardcoreMonsters']
      self.barbarian_time_played = values['timePlayed']['barbarian']
      self.demon_hunter_time_played = values['timePlayed']['demon-hunter']
      self.monk_time_played = values['timePlayed']['monk']
      self.witch_doctor_time_played = values['timePlayed']['witch-doctor']
      self.wizard_time_played = values['timePlayed']['wizard']
      self.fallen_heroes = nil
      self.battle_tag = values['battleTag']
      self.progression = nil
      self.hardcore_progression = nil
    end
  end
end
