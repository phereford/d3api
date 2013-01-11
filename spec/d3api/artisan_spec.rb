require 'spec_helper'

describe D3api::Artisan do
  use_vcr_cassette
  subject { D3api::Artisan.new(:us, 'blacksmith') }

  after do
    VCR.eject_cassette
  end

  context '.new' do
    it { should_not be_nil }
  end

  context '#set_method' do
    its(:slug)     { should eql 'blacksmith' }
    its(:name)     { should eql 'Blacksmith' }
    its(:portrait) { should eql 'pt_blacksmith' }
    its(:training) { should be nil }
  end
end
