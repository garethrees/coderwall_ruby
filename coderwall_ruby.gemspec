# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coderwall_ruby/version'

Gem::Specification.new do |gem|
  gem.name          = 'coderwall_ruby'
  gem.version       = CoderwallRuby::VERSION
  gem.authors       = ['Gareth Rees']
  gem.email         = ['gareth@garethrees.co.uk']
  gem.description   = %q{Simple wrapper around Coderwall User API}
  gem.summary       = %q{Simple wrapper around Coderwall User API}
  gem.homepage      = ''

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'httparty'

  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'vcr'
  gem.add_development_dependency 'turn'
  gem.add_development_dependency 'rake'
end
