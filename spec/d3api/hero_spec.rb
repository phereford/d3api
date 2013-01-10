require 'spec_helper'

describe D3api::Hero do
  use_vcr_cassette

  it 'should return json response' do
    @hero = D3api::Hero.new(:us, 'yojymbu', '1249', '30255685')
    @hero.should_not be_nil
  end
end
