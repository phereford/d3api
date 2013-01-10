require 'spec_helper'

describe D3api::Artisan, '.new' do
  use_vcr_cassette

  it 'returns a response' do
    @artisan = D3api::Artisan.new(:us, 'blacksmith')
    @artisan.should_not be_nil
  end
end

describe D3api::Artisan, 'top level hash methods from BaseModel' do
  subject { @artisan = D3api::Artisan.new(:us, 'blacksmith') }
  use_vcr_cassette

  its(:training) { should be_kind_of(Hash) }
  its(:slug)     { should be_kind_of(String) }
  its(:name)     { should be_kind_of(String) }
  its(:portrait) { should be_kind_of(String) }
end
