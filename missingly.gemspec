# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'missingly/version'

Gem::Specification.new do |spec|
  spec.name          = "missingly"
  spec.version       = Missingly::VERSION
  spec.authors       = ["Thijs de Vries"]
  spec.email         = ["moger777@gmail.com"]
  spec.description   = %q{A DSL for defining method missing methods}
  spec.summary       = %q{A DSL for defining method missing methods}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.0"
  spec.add_development_dependency "pry", "0.9.12"
  spec.add_development_dependency "coveralls"
end
