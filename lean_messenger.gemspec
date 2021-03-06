# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lean_messenger/version'

Gem::Specification.new do |spec|
  spec.name          = "lean_messenger"
  spec.version       = LeanMessenger::VERSION
  spec.authors       = ["banana"]
  spec.email         = ["banana@eurus.cn"]

  spec.summary       = %q{this is a messenger for lean cloud}
  spec.description   = %q{this is a messenger for lean cloud special for linkers on wall}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
