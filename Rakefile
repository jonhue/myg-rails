require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

system 'bundle'
system 'gem build material-components-web.gemspec'


RSpec::Core::RakeTask.new

task default: :spec
