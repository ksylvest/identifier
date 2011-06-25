require 'bundler'

require 'rake/extensiontask'

Rake::ExtensionTask.new 'identifier' do |extension|
  extension.lib_dir = 'lib/identifier'
end

task build: [:compile]

Bundler::GemHelper.install_tasks