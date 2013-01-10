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

  it 'returns an array for .heroes' do
    subject.heroes.should be_kind_of(Array)
  end

  it 'returns a hero id for .lastHeroPlayed' do
    subject.lastHeroPlayed.to_i.should be_kind_of(Integer)
  end

  it 'returns a string of numbers for .lastUpdated' do
    subject.lastUpdated.should be_kind_of(Integer)
  end

  it 'returns an array for .artisans' do
    subject.artisans.should be_kind_of(Array)
  end

  it 'returns an array for .hardcoreArtisans' do
    subject.hardcoreArtisans.should be_kind_of(Array)
  end

  it 'returns a hash for .kills' do
    subject.kills.should be_kind_of(Hash)
  end

  it 'returns a hash for .timePlayed' do
    subject.timePlayed.should be_kind_of(Hash)
  end

  it 'returns an array for .fallenHeroes' do
    subject.fallenHeroes.should be_kind_of(Array)
  end

  it 'returns a string for .battleTag' do
    subject.battleTag.should be_kind_of(String)
  end

  it 'returns an array for .progression' do
    subject.progression.should be_kind_of(Array)
  end

  it 'returns an array for .hardcoreProgression' do
    subject.hardcoreProgression.should be_kind_of(Array)
  end
end
