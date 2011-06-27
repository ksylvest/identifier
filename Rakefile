require 'bundler'

require 'rake'
require 'rake/testtask'

Rake::TestTask.new 'test' do |t|
  t.pattern = 'test/*.rb'
end

Bundler::GemHelper.install_tasks