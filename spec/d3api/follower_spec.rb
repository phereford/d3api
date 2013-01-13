require 'spec_helper'

describe D3api::Follower do
  use_vcr_cassette
  subject { D3api::Follower.new(:us, 'scoundrel') }

  after do
    VCR.eject_cassette
  end

  context '.new' do
    it { should_not be nil }
  end

  context '#set_method' do
    its(:slug)     { should eql 'scoundrel' }
    its(:name)     { should eql 'Scoundrel' }
    its(:portrait) { should eql 'scoundrel' }
    its(:skills)   { should be nil }
  end
end
