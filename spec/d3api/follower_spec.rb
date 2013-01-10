require 'spec_helper'

describe D3api::Follower, '.new' do
  use_vcr_cassette

  it 'returns a response' do
    @follower = D3api::Follower.new(:us, 'scoundrel')
    @follower.should_not be_nil
  end
end

describe D3api::Follower, 'top level hash to methods' do
  use_vcr_cassette
  subject { @follower = D3api::Follower.new(:us, 'scoundrel') }

  its(:slug)     { should be_kind_of(String) }
  its(:name)     { should be_kind_of(String) }
  its(:portrait) { should be_kind_of(String) }
  its(:skills)   { should be_kind_of(Hash) }
end
