$:.push File.expand_path("../lib", __FILE__)
require "hubspot/version"

Gem::Specification.new do |s|
  s.name        = "hubspot-api-client"
  s.version     = Hubspot::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["HubSpot"]
  s.email       = [""]
  s.homepage    = "https://github.com/HubSpot/hubspot-api-ruby"
  s.summary     = "HubSpot Ruby API Gem"
  s.description = "HubSpot Ruby API client"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'faraday', '>= 0.9.1'
  s.add_runtime_dependency 'json', '>= 1.8.6'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'
  s.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'
  s.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.12'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
