Gem::Specification.new do |s|
  s.name        = "identifier"
  s.version     = Identifier::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kevin Sylvestre"]
  s.email       = ["kevin@ksylvest.com"]
  s.homepage    = "http://github.com/ksylvest/identifier"
  s.summary     = "A very basic unique identifier"
  s.description = "Identifier is a Ruby unique identifier that wraps the UNIX, Linux and OS X 'uuidgen'."
  s.files       = Dir.glob("{bin,lib}/**/*") + %w(README.rdoc LICENSE)
end

