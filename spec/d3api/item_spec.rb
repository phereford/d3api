require 'spec_helper'

describe D3api::Item do
  use_vcr_cassette

  it 'should return json response' do
    @item = D3api::Item.new(:us, 'ChkIsp-JsQsSBwgEFRaK1aUwCTiYBEAAYJgEGNPX06ILUAhYAA')
    @item.should_not be_nil
  end
end
