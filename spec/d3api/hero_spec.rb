require 'spec_helper'

describe D3api::Hero do
  use_vcr_cassette
  subject { D3api::Hero.new(:us, 'yojymbu', '1249', '30255685') }

  after do
    VCR.eject_cassette
  end

  context '.new' do
    it { should_not be nil }
  end

  context '#set_method' do
    its(:id)             { should eql 30255685 }
    its(:name)           { should eql 'Belgan' }
    its(:hero_class)     { should eql 'barbarian' }
    its(:gender)         { should eql 'Male' }
    its(:level)          { should eql 45 }
    its(:hardcore)       { should eql true }
    its(:last_updated)   { should be_kind_of(Time) }
    its(:active_skills)  { should be_kind_of(Array) }
    its(:passive_skills) { should be_kind_of(Array) }
    its(:items)          { should be_kind_of(Array) }
    its(:followers)      { should be_kind_of(Array) }
  end
end
