# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'color/cop/version'

Gem::Specification.new do |spec|
  spec.name          = 'color-cop'
  spec.version       = Color::Cop::VERSION
  spec.authors       = ['Paul Farino', 'Mark McDonald']
  spec.email         = ['paul.farino1@gmail.com', 'mark.mcdonald.ga@gmail.com']
  spec.summary       = %q{Find stray hex codes in your sass files.}
  spec.description   = %q{}
  spec.homepage      = 'https://github.com/paulfarino/color-cop'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'cucumber'
  spec.add_development_dependency 'aruba'
end
