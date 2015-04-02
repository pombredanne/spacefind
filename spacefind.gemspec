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

  spec.summary       = %q{Finds mischevious trailing whitespace after PHP closing tags.}
  spec.description   = %q{Finds mischevious trailing whitespace after PHP closing tags.}
  spec.homepage      = 'https://github.com/t-richards/spacefind'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = 'spacefind'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'minitest', '~> 5.5.1'
  spec.add_development_dependency 'rake', '~> 10.0'
end
