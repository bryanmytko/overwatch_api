# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'overwatch_api/version'

Gem::Specification.new do |spec|
  spec.name          = "overwatch_api"
  spec.version       = OverwatchApi::VERSION
  spec.authors       = ["Bryan Mytko"]
  spec.email         = ["bryanmytko@gmail.com"]
  spec.summary       = %q{API Wrapper for overwatchapi.com}
  spec.description   = <<-EOF
    A wrapper for the Overwatch API found at https://dev.battle.net/docs
  EOF
  spec.homepage      = "https://github.com/bryanmytko/overwatch_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10"

  spec.add_development_dependency "rspec", "~> 3.3"
  spec.add_development_dependency "vcr", "~> 2.9"
  spec.add_development_dependency "webmock", "~> 1.8"
  spec.add_development_dependency "byebug", '~> 8.2', '>= 8.2.4'

  spec.add_dependency "httparty", "~> 0.13"
  spec.add_dependency "json", "~> 1.8"
  spec.add_dependency "dotenv", "~>2.0"
end
