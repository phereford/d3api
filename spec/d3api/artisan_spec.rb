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

  it 'returns an array for .training' do
    subject.training.should be_kind_of(Array)
  end

  it 'returns a string for .slug' do
    subject.slug.should be_kind_of(String)
  end

  it 'returns a string for .name' do
    subject.name.should be_kind_of(String)
  end

  it 'returns a string for .potrait' do
    subject.potrait.should be_kind_of(String)
  end
end
