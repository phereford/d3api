require 'spec_helper'

describe D3api::Hero, '.new' do
  use_vcr_cassette

  it 'returns a response' do
    @hero = D3api::Hero.new(:us, 'yojymbu', '1249', '30255685')
    @hero.should_not be_nil
  end
end
