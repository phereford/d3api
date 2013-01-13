require 'spec_helper'

describe D3api::EquippedItem do
  subject { D3api::EquippedItem.new( YAML.load_file( './spec/fixtures/equipped_item.yml' ) ) }

  context '#set_method' do
    its(:location)       { should eql 'head' }
    its(:id)             { should eql 'Helm_104' }
    its(:name)           { should eql 'Abyssal Visage' }
    its(:icon)           { should eql 'helm_104_barbarian_male' }
    its(:display_color)  { should eql 'yellow' }
    its(:tooltip_params) { should eql 'item/Cj4Ite7E6QkSBwgEFTr1Tl0d0pJdSR0wjxxFHb1b6EgdhgJj6iILCAAVy_4BABgKICAwDTjIA0AASAtQDGD_Axj01PfUC1ACWAA' }
  end
end
