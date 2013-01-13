module D3api
  class HeroStats
    attr_accessor :life, :damage, :attack_speed, :armor, :strength,
                  :dexterity, :vitality, :intelligence, :physical_resist,
                  :fire_resist, :cold_resist, :lightning_resist, :poison_resist,
                  :arcane_resist, :crit_damage, :block_chance, :block_amount_min,
                  :block_amount_max, :damage_increase, :crit_chance, :damage_reduction,
                  :thorns, :life_steal, :life_per_kill, :gold_find, :magic_find,
                  :life_on_hit, :primary_resource, :secondary_resource

    def initialize(stat_values)
      set_method(stat_values)
    end

    private
    def set_method(values)
      self.life = values['life']
      self.damage = values['damage']
      self.attack_speed = values['attackSpeed']
      self.armor = values['armor']
      self.strength = values['strength']
      self.dexterity = values['dexterity']
      self.vitality = values['vitality']
      self.intelligence = values['intelligence']
      self.physical_resist = values['physicalResist']
      self.fire_resist = values['fireResist']
      self.cold_resist = values['coldResist']
      self.lightning_resist = values['lightningResist']
      self.poison_resist = values['poisonResist']
      self.arcane_resist = values['arcaneResist']
      self.crit_damage = values['critDamage']
      self.block_chance = values['blockChance']
      self.block_amount_min = values['blockAmountMin']
      self.block_amount_max = values['blockAmountMax']
      self.damage_increase = values['damageIncrease']
      self.crit_chance = values['critChance']
      self.damage_reduction = values['damageReduction']
      self.thorns = values['thorns']
      self.life_steal = values['lifeSteal']
      self.life_per_kill = values['lifePerKill']
      self.gold_find = values['goldFind']
      self.magic_find = values['magicFind']
      self.life_on_hit = values['lifeOnHit']
      self.primary_resource = values['primaryResource']
      self.secondary_resource = values['secondaryResource']
    end
  end
end
