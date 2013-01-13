require 'spec_helper'

describe D3api::Career do
  use_vcr_cassette
  subject { D3api::Career.new(:us, 'yojymbu', '1249') }

  after do
    VCR.eject_cassette
  end

  context '.new' do
    it { should_not be nil }
  end

  context '#set_method' do
    its(:last_hero_played)         { should be_kind_of(Integer) }
    its(:heroes)                   { should be_kind_of(Array) }
    its(:last_updated)             { should be_kind_of(Time) }
    its(:artisans)                 { should be_kind_of(Array) }
    its(:hardcore_artisans)        { should be_kind_of(Array) }
    its(:monster_kills)            { should be_kind_of(Integer) }
    its(:elite_kills)              { should be_kind_of(Integer) }
    its(:hardcore_monster_kills)   { should be_kind_of(Integer) }
    its(:barbarian_time_played)    { should be_kind_of(Float) }
    its(:demon_hunter_time_played) { should be_kind_of(Float) }
    its(:monk_time_played)         { should be_kind_of(Float) }
    its(:witch_doctor_time_played) { should be_kind_of(Float) }
    its(:wizard_time_played)       { should be_kind_of(Float) }
    its(:fallen_heroes)            { should be nil }
    its(:battle_tag)               { should eql 'Yojymbu#1249' }
    its(:progression)              { should be nil }
    its(:hardcore_progression)     { should be nil }
  end
end
