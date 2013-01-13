require 'spec_helper'

describe D3api::HeroStats do
  subject { D3api::HeroStats.new( YAML.load_file( './spec/fixtures/stats.yml')['heroStats'] ) }

  context '#set_method' do
    its(:life) { should eql 11161 }
    its(:damage) { should eql 577.381 }
    its(:attack_speed) { should eql 1.545 }
    its(:armor) { should eql 2116 }
    its(:strength) { should eql 595 }
    its(:dexterity) { should eql 330 }
    its(:vitality) { should eql 531 }
    its(:intelligence) { should eql 399 }
    its(:physical_resist) { should eql 71 }
    its(:fire_resist) { should eql 51 }
    its(:cold_resist) { should eql 36 }
    its(:lightning_resist) { should eql 51 }
    its(:poison_resist) { should eql 64 }
    its(:arcane_resist) { should eql 49 }
    its(:crit_damage) { should eql 1.63 }
    its(:block_chance) { should eql 0.12 }
    its(:block_amount_min) { should eql 180 }
    its(:block_amount_max) { should eql 297 }
    its(:damage_increase) { should eql 5.949999809265137 }
    its(:crit_chance) { should eql 0.07000000029802322 }
    its(:damage_reduction) { should eql 0.4846540093421936 }
    its(:thorns) { should eql 20.0 }
    its(:life_steal) { should eql 0.0 }
    its(:life_per_kill) { should eql 0.0 }
    its(:gold_find) { should eql 0.0 }
    its(:magic_find) { should eql 0.25 }
    its(:life_on_hit) { should eql 0.0 }
    its(:primary_resource) { should eql 100 }
    its(:secondary_resource) { should eql 0 }
  end
end
