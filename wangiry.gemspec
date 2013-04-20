# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wangiry/version'

Gem::Specification.new do |spec|
  spec.name          = "wangiry"
  spec.version       = Wangiry::VERSION
  spec.authors       = ["bash0C7"]
  spec.email         = ["koshiba+github@4038nullpointer.com"]
  spec.description   = 'call telephone and cancel after several seconds(say WAN GIRI in Japan)'
  spec.summary       = 'call functon using Twilio'
  spec.homepage      = "http://d.hatena.ne.jp/bash0C7"
  spec.license       = "Ruby's"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "twilio-ruby"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
end
