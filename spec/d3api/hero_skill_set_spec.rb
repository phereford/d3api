require 'spec_helper'

describe D3api::HeroSkillSet do
  subject { D3api::HeroSkillSet.new('active', YAML.load_file( './spec/fixtures/hero_skill_set.yml' ) ) }

  context '#set_method' do
    its(:skill_set) { should be_kind_of(Array) }
  end
end
