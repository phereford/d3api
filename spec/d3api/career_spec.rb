require 'spec_helper'

describe D3api::Career, '.new' do
  use_vcr_cassette

  it 'returns a response' do
    @career = D3api::Career.new(:us, 'yojymbu', '1249')
    @career.should_not be_nil
  end
end

describe D3api::Career, 'top level hash methods from BaseModel' do
  use_vcr_cassette
  subject { @career = D3api::Career.new(:us, 'yojymbu', '1249') }

  its(:heroes)              { should be_kind_of(Array) }
  its(:lastHeroPlayed)      { should be_kind_of(Integer) }
  its(:lastUpdated)         { should be_kind_of(Integer) }
  its(:artisans)            { should be_kind_of(Array) }
  its(:hardcoreArtisans)    { should be_kind_of(Array) }
  its(:kills)               { should be_kind_of(Hash) }
  its(:timePlayed)          { should be_kind_of(Hash) }
  its(:fallenHeroes)        { should be_kind_of(Array) }
  its(:battleTag)           { should be_kind_of(String) }
  its(:progression)         { should be_kind_of(Hash) }
  its(:hardcoreProgression) { should be_kind_of(Hash) }
end
