require 'bundler'

require 'rake/testtask'
require 'rake/extensiontask'

Rake::ExtensionTask.new 'identifier' do |t|
  t.lib_dir = 'lib/identifier'
end

Rake::TestTask.new 'test' do |t|
  t.pattern = 'test/*.rb'
end

Bundler::GemHelper.install_tasks