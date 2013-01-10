require 'spec_helper'

describe D3api::Item, '.new' do
  use_vcr_cassette

  it 'returns a response' do
    @item = D3api::Item.new(:us, 'COGHsoAIEgcIBBXIGEoRHYQRdRUdnWyzFB2qXu51MA04kwNAAFAKYJMD')
    @item.should_not be_nil
  end
end

describe D3api::Item, 'top level hash to methods' do
  use_vcr_cassette
  subject { @item = D3api::Item.new(:us, 'ChkIsp-JsQsSBwgEFRaK1aUwCTiYBEAAYJgEGNPX06ILUAhYAA') }

  its(:name)             { should be_kind_of(String) }
  its(:icon)             { should be_kind_of(String) }
  its(:displayColor)     { should be_kind_of(String) }
  its(:tooltipParams)    { should be_kind_of(String) }
  its(:requiredLevel)    { should be_kind_of(Integer) }
  its(:itemLevel)        { should be_kind_of(Integer) }
  its(:bonusAffixes)     { should be_kind_of(Integer) }
  its(:dps)              { should be_kind_of(Hash) }
  its(:attacksPerSecond) { should be_kind_of(Hash) }
  its(:minDamage)        { should be_kind_of(Hash) }
  its(:maxDamage)        { should be_kind_of(Hash) }
  its(:attributes)       { should be_kind_of(Array) }
  its(:attributesRaw)    { should be_kind_of(Hash) }
  its(:socketEffects)    { should be_kind_of(Array) }
  its(:salvage)          { should be_kind_of (Array) }
end
