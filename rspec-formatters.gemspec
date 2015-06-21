# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec-formatters/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-formatters"
  spec.version       = RSpec::Formatters::VERSION
  spec.authors       = ["Richard Ramsden"]
  spec.email         = ["richard@rramsden.ca"]
  spec.summary       = %q{A collection of useful RSpec 3 formatters}
  spec.description   = %q{A collection of useful RSpec 3 formatters}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec-core", "~> 3.0"
end
