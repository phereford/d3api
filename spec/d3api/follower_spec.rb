require 'spec_helper'

describe D3api::Follower, '.new' do
  use_vcr_cassette

  it 'returns a response' do
    @follower = D3api::Follower.new
    @follower.should_not be_nil
  end
end
