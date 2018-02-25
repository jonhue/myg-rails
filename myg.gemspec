# -*- encoding: utf-8 -*-
require File.expand_path(File.join('..', 'lib', 'myg', 'version'), __FILE__)

Gem::Specification.new do |gem|
    gem.name                  = 'myg'
    gem.version               = Myg::VERSION
    gem.platform              = Gem::Platform::RUBY
    gem.summary               = 'Myg on Rails'
    gem.description           = 'The opinionated & modular state-of-the-web framework Myg integrated with Ruby on Rails.'
    gem.authors               = 'Jonas Hübotter'
    gem.email                 = 'me@jonhue.me'
    gem.homepage              = 'https://jonhue.me/repos/myg-on-rails'
    gem.license               = 'MIT'

    gem.files                 = Dir['README.md', 'CHANGELOG.md', 'LICENSE', 'lib/**/*', 'app/**/*', 'vendor/**/*']
    gem.require_paths         = ['lib']

    gem.required_ruby_version = '>= 2.3'

    gem.add_dependency 'railties', '>= 5.0'
    gem.add_dependency 'activesupport', '>= 5.0'
    gem.add_dependency 'actionpack', '>= 5.0'
    gem.add_dependency 'mozaic', '~> 2.0'

    gem.add_development_dependency 'rspec', '~> 3.7'
    gem.add_development_dependency 'rubocop', '~> 0.52'
end
