# -*- encoding: utf-8 -*-
$:.push File.join(File.dirname(__FILE__), 'lib')
require "identifier/version"

Gem::Specification.new do |s|
  s.name        = "identifier"
  s.version     = Identifier::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kevin Sylvestre"]
  s.email       = ["kevin@ksylvest.com"]
  s.homepage    = "http://github.com/ksylvest/identifier"
  s.summary     = "A very basic unique identifier"
  s.description = "Identifier is a Ruby unique identifier generator that wraps the UNIX, Linux and Macintosh 'uuid' library."
  s.files       = Dir.glob("{bin,ext,lib}/**/*") + %w(README.rdoc LICENSE Gemfile)
  s.extensions << "ext/identifier/extconf.rb"
end
