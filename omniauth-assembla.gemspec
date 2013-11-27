# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require File.expand_path('../lib/omniauth-assembla/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "omniauth-assembla"
  spec.version       = OmniAuth::Assembla::VERSION
  spec.authors       = ["Derek Hopper"]
  spec.email         = ["hopper.derek@gmail.com"]
  spec.description   = %q{OmniAuth strategy for Assembla}
  spec.summary       = %q{OmniAuth strategy for Assembla}
  spec.homepage      = "https://github.com/onboarder/omniauth-assembla"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth', '~> 1.0'
  spec.add_dependency 'omniauth-oauth2', '~> 1.0'

  spec.add_development_dependency 'bundler', '~> 1.0'

  spec.cert_chain  = ['certs/djhopper01-public.pem']
  spec.signing_key = File.expand_path("~/.gem/djhopper01-private.pem") if $0 =~ /gem\z/
end
