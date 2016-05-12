# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'my_react_tools/version'

Gem::Specification.new do |spec|
  spec.name          = "my_react_tools"
  spec.version       = MyReactTools::VERSION
  spec.authors       = ["Thai Nguyen"]
  spec.email         = ["nguyen7thai@gmail.com"]
  spec.summary       = %q{Tools I need to develop web app using reactjs.}
  spec.description   = %q{Tools I need to develop web app using reactjs.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_dependency "rails"
  spec.add_dependency "react-rails"
  spec.add_dependency "bower-rails", ">= 0.10.0"
  spec.add_dependency "browserify-rails", "~> 1.5.0"
end
