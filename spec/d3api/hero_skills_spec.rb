require 'spec_helper'

describe D3api::HeroSkills do
  subject { D3api::HeroSkills.new('active', [{'skill' =>
        {'slug' => 'cleave',
          'name' => 'Cleave',
          'icon' => 'barbarian_cleave',
          'level' => 3,
          'categorySlug' => 'primary',
          'tooltipUrl' => 'skill/barbarian/cleave',
          'description' => 'Generate: 5 Fury per attack\r\n\r\nSwing your weapon in a wide arc to deal 140% weapon damage to all enemies caught in the swing.',
          'simpleDescription' => 'Generate: 5 Fury per attack\r\n\r\nSwing your weapon in an arc and strike multiple enemies.',
          'skillCalcId' => 'b'},
        'rune'=>
          {'slug' => 'cleave-c',
            'type' => 'c',
            'name' => 'Scattering Blast',
            'level' => 30,
            'description' => 'On Critical Hits, knock enemies back 9 yards and inflict 60% weapon damage to enemies where they land.',
            'simpleDescription' => 'Critical Hits cause Knockback, and enemies deal additional damage where they land.',
            'tooltipParams' => 'rune/cleave/c',
            'skillCalcId' => 'b',
            'order' => 2}}]
    )
  }

  context '#set_method' do
    its(:skill_set) { should be_kind_of(Array) }
  end
end
