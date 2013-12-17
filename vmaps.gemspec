# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vmaps/version'

Gem::Specification.new do |spec|
  spec.name          = "vmaps"
  spec.version       = Vmaps::VERSION
  spec.authors       = ["Mike Anderson"]
  spec.email         = ["athaeryn@me.com"]
  spec.description   = %q{List your vim mappings.}
  spec.summary       = %q{This is a gem to list your vim mappings.}
  # spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
