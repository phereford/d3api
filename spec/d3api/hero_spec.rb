require 'spec_helper'

describe D3api::Hero, '.new' do
  use_vcr_cassette

  it 'returns a response' do
    @hero = D3api::Hero.new(:us, 'yojymbu', '1249', '30255685')
    @hero.should_not be_nil
  end
end

describe D3api::Hero, 'top level hash to methods' do
  use_vcr_cassette
  subject { @hero = D3api::Hero.new(:us, 'yojymbu', '1249', '30255685') }

  its(:id)          { should be_kind_of(Integer) }
  its(:name)        { should be_kind_of(String) }
  its(:gender)      { should be_kind_of(Integer) }
  its(:level)       { should be_kind_of(Integer) }
  its(:hardcore)    { should be_kind_of(TrueClass || FalseClass) }
  its(:skills)      { should be_kind_of(Hash) }
  its(:items)       { should be_kind_of(Hash) }
  its(:followers)   { should be_kind_of(Hash) }
  its(:stats)       { should be_kind_of(Hash) }
  its(:progress)    { should be_kind_of(Hash) }
  its(:kills)       { should be_kind_of(Hash) }
end
