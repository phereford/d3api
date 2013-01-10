require 'spec_helper'

describe D3api::Follower do
  use_vcr_cassette

  it 'returns a json response' do
    @follower = D3api::Follower.new
    @follower.should_not be_nil
  end
end
