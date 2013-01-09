# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'd3api/version'

Gem::Specification.new do |gem|
  gem.name          = 'd3api'
  gem.version       = D3api::VERSION
  gem.authors       = ['Patrick Hereford']
  gem.email         = ['phereford@gmail.com']
  gem.description   = %q{Diablo 3 API ruby wrapper}
  gem.summary       = %q{Blizzard's Diablo 3 API}
  gem.homepage      = 'https://github.com/phereford/d3api'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'faraday', '~> 0.8.4'
  gem.add_dependency 'faraday_middleware', '~> 0.9.0'

  gem.add_development_dependency 'rspec', '2.12.0'
  gem.add_development_dependency 'vcr', '~> 2.4.0'
end
