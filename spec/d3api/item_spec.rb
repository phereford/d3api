require 'spec_helper'

describe D3api::Item do
  use_vcr_cassette
  subject { D3api::Item.new(:us, 'ChkIsp-JsQsSBwgEFRaK1aUwCTiYBEAAYJgEGNPX06ILUAhYAA') }

  after do
    VCR.eject_cassette
  end

  context '.new' do
    it { should_not be nil}
  end

  context 'set_method' do
    its(:name)                   { should eql 'Cloth Pants' }
    its(:icon)                   { should eql 'pants_001_monk_male' }
    its(:display_color)          { should be_kind_of(String) }
    its(:tooltip_params)         { should eql 'item/ChkIsp-JsQsSBwgEFRaK1aUwCTiYBEAAYJgEGNPX06ILUAhYAA' }
    its(:required_level)         { should eql 1 }
    its(:item_level)             { should eql 2 }
    its(:bonus_affixes)          { should eql 0 }
    its(:min_dps)                { should raise_error }
    its(:max_dps)                { should raise_error }
    its(:min_attacks_per_second) { should raise_error }
    its(:max_attacks_per_second) { should raise_error }
    its(:attributes)             { should be_kind_of(Array) }
    its(:socket_effects)         { should be nil }
    its(:salvage)                { should be nil }
  end
end
