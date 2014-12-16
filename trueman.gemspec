# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trueman/version'

Gem::Specification.new do |spec|
  spec.name          = "trueman"
  spec.version       = Trueman::VERSION
  spec.authors       = ["Sean Culver", "Adam Cuppy"]
  spec.email         = ["sean@codingzeal.com", "adam@codingzeal.com"]
  spec.summary       = %q{Easily assert truthy and falsy values on strings integers}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1.0"
end
