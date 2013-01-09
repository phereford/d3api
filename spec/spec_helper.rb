require 'rspec'
require 'factory_girl_rails'
require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = 'spec/cassettes'
  config.hook_into :faraday
  config.default_cassette_options = { record: :new_episodes, erb: true }
end

RSpec.configure do |config|
  config.extend VCR::RSpec::Macros
  config.include FactoryGirl::Syntax::Methods
  config.mock_with :rspec
  config.infer_base_class_for_anonymous_controllers = false
  config.use_transactional_fixtures = false
end
