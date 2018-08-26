# frozen_string_literal: true

require File.expand_path(File.join('..', 'lib', 'myg', 'version'), __FILE__)

Gem::Specification.new do |gem|
  gem.name                  = 'myg'
  gem.version               = Myg::VERSION
  gem.platform              = Gem::Platform::RUBY
  gem.summary               = 'Myg on Rails'
  gem.description           = 'The opinionated & modular state-of-the-web '\
                              'framework Myg integrated with Ruby on Rails.'
  gem.authors               = 'Jonas Hübotter'
  gem.email                 = 'me@jonhue.me'
  gem.homepage              = 'https://github.com/jonhue/myg-rails'
  gem.license               = 'MIT'

  gem.files                 = Dir['README.md', 'LICENSE', 'lib/**/*',
                                  'app/**/*', 'vendor/**/*']
  gem.require_paths         = ['lib']

  gem.required_ruby_version = '>= 2.3'

  gem.add_dependency 'actionpack', '~> 5.2'
  gem.add_dependency 'activesupport', '~> 5.2'
  gem.add_dependency 'mozaic', '~> 2.0'
  gem.add_dependency 'railties', '~> 5.2'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rubocop'
  gem.add_development_dependency 'rubocop-rspec'
end
