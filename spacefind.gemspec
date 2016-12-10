# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spacefind/version'

Gem::Specification.new do |spec|
  spec.name          = 'spacefind'
  spec.version       = Spacefind::VERSION
  spec.licenses      = ['MIT']
  spec.authors       = ['Tom Richards']
  spec.email         = ['tom@tomrichards.net']

  spec.summary       = 'Finds problematic characters in PHP source code files.'
  spec.description   = 'Finds problematic characters in PHP source code files.'
  spec.homepage      = 'https://github.com/t-richards/spacefind'

  spec.files         = `git ls-files -z`.split("\x0").grep(/^(LICENSE|README\.md|lib)/)
  spec.bindir        = 'exe'
  spec.executables   = 'spacefind'
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'minitest', '~> 5.5.1'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'slop', '~> 4.2.0'
  spec.add_dependency 'term-ansicolor', '~> 1.4.0'
end
