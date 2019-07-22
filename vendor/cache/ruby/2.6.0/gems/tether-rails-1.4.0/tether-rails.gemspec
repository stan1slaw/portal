# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tether-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "tether-rails"
  spec.version       = TetherRails::VERSION
  spec.authors       = ["Jake Gavin"]
  spec.email         = ["jakegavin@gmail.com"]

  spec.summary       = "tether-rails wraps the Tether JavaScript library so that it can easily be included in Rails."
  spec.homepage      = "https://github.com/jakegavin/tether-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3.1"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
