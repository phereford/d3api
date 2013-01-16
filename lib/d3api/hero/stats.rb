module D3api
  class HeroStats < BaseModel
    STAT_MAPPINGS = {
      :life => 'life',
      :damage => 'damage',
      :attack_speed => 'attackSpeed',
      :armor => 'armor',
      :strength => 'strength',
      :dexterity => 'dexterity',
      :vitality => 'vitality',
      :intelligence => 'intelligence',
      :physical_resist => 'physicalResist',
      :fire_resist => 'fireResist',
      :cold_resist => 'coldResist',
      :lightning_resist => 'lightningResist',
      :poison_resist => 'poisonResist',
      :arcane_resist => 'arcaneResist',
      :crit_damage => 'critDamage',
      :block_chance => 'blockChance',
      :block_amount_min => 'blockAmountMin',
      :block_amount_max => 'blockAmountMax',
      :damage_increase => 'damageIncrease',
      :crit_chance => 'critChance',
      :damage_reduction => 'damageReduction',
      :thorns => 'thorns',
      :life_steal => 'lifeSteal',
      :life_per_kill => 'lifePerKill',
      :gold_find => 'goldFind',
      :magic_find => 'magicFind',
      :life_on_hit => 'lifeOnHit',
      :primary_resource => 'primaryResource',
      :secondary_resource => 'secondaryResource'
    }

    attr_accessor :life, :damage, :attack_speed, :armor, :strength,
                  :dexterity, :vitality, :intelligence, :physical_resist,
                  :fire_resist, :cold_resist, :lightning_resist,
                  :poison_resist, :arcane_resist, :crit_damage, :block_chance,
                  :block_amount_min, :block_amount_max, :damage_increase,
                  :crit_chance, :damage_reduction, :thorns, :life_steal,
                  :life_per_kill, :gold_find, :magic_find, :life_on_hit,
                  :primary_resource, :secondary_resource

    def initialize(stat_values)
      set_method(stat_values, STAT_MAPPINGS)
    end
  end
end
