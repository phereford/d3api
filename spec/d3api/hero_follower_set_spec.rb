require 'spec_helper'

describe D3api::HeroFollowerSet do
  subject { D3api::HeroFollowerSet.new( YAML.load_file( './spec/fixtures/hero_follower_set.yml' ) ) }

  context '#set_method' do
    its(:follower_set) { should be_kind_of(Array) }
  end
end
