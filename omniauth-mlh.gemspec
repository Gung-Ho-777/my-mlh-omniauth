# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-mlh/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-mlh"
  spec.version       = OmniAuth::MLH::VERSION
  spec.authors       = ["Swift"]
  spec.email         = ["swift@mlh.io"]

  spec.summary       = %q{Official OmniAuth strategy for My MLH.}
  spec.description   = %q{Official OmniAuth strategy for My MLH.}
  spec.homepage      = "http://github.com/mlh/omniauth-mlh"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.2.4'

  spec.executables    = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.files          = `git ls-files`.split("\n")
  spec.test_files     = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth', '~> 1.0'
  spec.add_dependency 'omniauth-oauth2', '~> 1.3.1'
  spec.add_dependency 'activesupport'

  spec.add_development_dependency 'rspec', '~> 2.7'
  spec.add_development_dependency 'rake', '~> 10.5'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'webmock'
end
