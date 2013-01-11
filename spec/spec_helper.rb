require 'd3api'
require 'rspec'
require 'vcr'
require 'simplecov'

SimpleCov.start

VCR.configure do |config|
  config.cassette_library_dir = 'spec/cassettes'
  config.hook_into :faraday
  config.default_cassette_options = { :record => :new_episodes, :erb => true }
end

RSpec.configure do |config|
  config.extend VCR::RSpec::Macros
  config.mock_with :rspec
end
