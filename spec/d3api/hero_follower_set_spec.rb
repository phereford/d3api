require 'spec_helper'

describe D3api::HeroFollowerSet do
  subject { D3api::HeroFollowerSet.new(
    {'templar'=>
      {'slug' => 'templar',
        'level' => 8,
        'items' =>
          {'mainHand' =>
            {'id' => 'Spear_001',
              'name' => 'Javelin',
              'icon' => 'spear_001_demonhunter_male',
              'displayColor' => 'white',
              'tooltipParams' => 'item/ChkI6MLF7A4SBwgEFQsX9vkwCTiqA0AAYKoDGOmjz2A'},
              'offHand'=>
            {'id' => 'Shield_001',
              'name' => 'Buckler',
              'icon' => 'shield_001_demonhunter_male',
              'displayColor' => 'white',
              'tooltipParams' => 'item/ChkIsIumtgkSBwgEFYkDO2wwCTjmBEAAYOYEGJKO2MMN'}},
          'stats' => {'goldFind' => 0, 'magicFind' => 0, 'experienceBonus' => 0},
          'skills'=>
            [{'skill'=>
              {'slug'=> 'heal',
                'name' => 'Heal',
                'icon' => 'templar_heal_110',
                'level' => 5,
                'tooltipUrl' => 'skill/templar/heal',
                'description' => 'Heals you and the Templar for 4651 Life.\r\n\r\nCooldown: 30 seconds',
                'simpleDescription' => 'Heals you and the Templar.',
                'skillCalcId' => 'a'}},
                {},
                {},
                {}]}}
    )
  }

  context '#set_method' do
    its(:follower_set) { should be_kind_of(Array) }
  end
end
