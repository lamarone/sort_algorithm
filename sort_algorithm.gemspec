# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sort_algorithm/version'
require 'rake'

Gem::Specification.new do |spec|
  spec.name          = "sort_algorithm"
  spec.version       = SortAlgorithm::VERSION
  spec.authors       = ["9cc9"]
  spec.email         = ["cyx199021@163.com"]
  spec.description   = %q{"Sort algorithm."}
  spec.summary       = %q{"Basic components"}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = FileList['lib/**/*.rb', 'bin/*', 'lib/sort_algorithm.rb', 'spec/**/*'].to_a
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
