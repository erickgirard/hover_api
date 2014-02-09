# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hover_api/version'

Gem::Specification.new do |spec|
  spec.name          = "hover_api"
  spec.version       = HoverApi::VERSION
  spec.authors       = ["Erick Girard"]
  spec.email         = ["contact@erickgirard.com"]
  spec.summary       = %q{This is a wrapper around the undocumented/unsupported javascript api of Hover.com}
  spec.homepage      = "https://github.com/erickgirard/hover_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  
  spec.add_dependency "faraday"
end
