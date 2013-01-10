require 'spec_helper'
require 'pry'
describe D3api::Artisan do
  use_vcr_cassette

  it 'returns a json response' do
    @artisan = D3api::Artisan.new
    @artisan.should_not be_nil
  end
end
