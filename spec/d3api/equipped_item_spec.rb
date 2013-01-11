require 'spec_helper'

describe D3api::EquippedItem do
  subject { D3api::EquippedItem.new(
    [ 'head', {'id' => 'Helm_104',
      'name' => 'Abyssal Visage',
      'icon' => 'helm_104_barbarian_male',
      'displayColor' => 'yellow',
      'tooltipParams' =>
        'item/Cj4Ite7E6QkSBwgEFTr1Tl0d0pJdSR0wjxxFHb1b6EgdhgJj6iILCAAVy_4BABgKICAwDTjIA0AASAtQDGD_Axj01PfUC1ACWAA' }
    ]
  ) }

  context '#set_method' do
    its(:location)       { should eql 'head' }
    its(:id)             { should eql 'Helm_104' }
    its(:name)           { should eql 'Abyssal Visage' }
    its(:icon)           { should eql 'helm_104_barbarian_male' }
    its(:display_color)  { should eql 'yellow' }
    its(:tooltip_params) { should eql 'item/Cj4Ite7E6QkSBwgEFTr1Tl0d0pJdSR0wjxxFHb1b6EgdhgJj6iILCAAVy_4BABgKICAwDTjIA0AASAtQDGD_Axj01PfUC1ACWAA' }
  end
end
