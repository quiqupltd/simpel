# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simpel/version'

Gem::Specification.new do |spec|

  spec.name          = 'simpel'
  spec.version       = Simpel::VERSION
  spec.authors       = ['Wilson Silva', 'Danny Hawkins']
  spec.email         = ['me@wilsonsilva.net', 'danny@quiqup.com']

  spec.summary       = 'Simple DSL to serialize objects and their associations into JSON'
  spec.description   = 'A lightweight alternative to Active Model Serializers'
  spec.homepage      = 'https://github.com/QuiqUpLTD/simpel'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport', '~> 4.1'

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.2'

end
