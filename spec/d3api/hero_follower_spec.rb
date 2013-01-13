require 'spec_helper'

describe D3api::HeroFollower do
  subject { D3api::HeroFollower.new( 'templar', YAML.load_file( './spec/fixtures/hero_follower.yml' ) ) }

  context '#set_method' do
    its(:follower_type) { should eql 'templar' }
    its(:slug) { should eql 'templar'}
    its(:level) { should eql 8 }
    its(:items) { should be_kind_of(Array) }
    its(:skills) { should be nil }
  end
end
