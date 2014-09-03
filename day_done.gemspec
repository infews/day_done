# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'day_done/version'

Gem::Specification.new do |spec|
  spec.name          = "day_done"
  spec.version       = DayDone::VERSION
  spec.authors       = ["Davis W. Frank"]
  spec.email         = ["dwfrank@gmail.com"]
  spec.summary       = %q{Archive Folding Text @done tasks to DayOne}
  spec.description   = ""
  spec.homepage      = "http://github.com/infews/day_done"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "fuubar"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
end
