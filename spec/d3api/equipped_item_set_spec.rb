require 'spec_helper'

describe D3api::EquippedItemSet do
  subject { D3api::EquippedItemSet.new( YAML.load_file( './spec/fixtures/equipped_item_set.yml' )['equippedItemSet'] ) }

  context '#set_method' do
    its(:item_set) { should be_kind_of(Array) }
  end
end
