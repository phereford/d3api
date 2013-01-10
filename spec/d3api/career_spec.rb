require 'spec_helper'

describe D3api::Career do
  use_vcr_cassette

  it 'should return json response' do
    @career = D3api::Career.new(:us, 'yojymbu', '1249')
    @career.should_not be_nil
  end
end
