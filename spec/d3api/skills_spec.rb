require 'spec_helper'

describe D3api::Skill do
  subject { D3api::Skill.new('active', YAML.load_file( './spec/fixtures/hero_skill.yml' ) ) }

  context '#set_method' do
    its(:skill_type) { should eql 'active' }
    its(:skill_slug) { should eql 'cleave' }
    its(:skill_name) { should eql 'Cleave' }
    its(:skill_icon) { should eql 'barbarian_cleave' }
    its(:skill_tooltip_url) { should eql 'skill/barbarian/cleave' }
    its(:skill_description) { should eql 'Generate: 5 Fury per attack\\\\r\\\\n\\\\r\\\\nSwing your weapon in a wide arc\\n    to deal 140% weapon damage to all enemies caught in the swing.' }
    its(:skill_simple_description) { should eql 'Generate: 5 Fury per attack\\\\r\\\\n\\\\r\\\\nSwing your weapon in an\\n    arc and strike multiple enemies.' }
    its(:rune_slug) { should eql 'cleave-c' }
    its(:rune_type) { should eql 'c' }
    its(:rune_name) { should eql 'Scattering Blast' }
    its(:rune_description) { should eql 'On Critical Hits, knock enemies back 9 yards and inflict 60% weapon\\n    damage to enemies where they land.' }
    its(:rune_simple_description) { should eql 'Critical Hits cause Knockback, and enemies deal additional damage\\n    where they land.' }
    its(:rune_tooltip_params) { should eql 'rune/cleave/c' }
    its(:rune_order) { should eql 2 }
  end
end
