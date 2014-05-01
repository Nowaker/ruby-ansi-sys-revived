lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ansi-sys/ansisys-version'

Gem::Specification.new do |s|
  s.name = 'ansi-sys-revived'
  s.platform = Gem::Platform::RUBY
  s.version = AnsiSys::Version::STRING
  s.summary = 'A library to render texts with ANSI escape sequences. Revived from RubyForge.'
  s.license = 'GNU GPLv3'
  s.homepage = 'https://github.com/Nowaker/ruby-ansi-sys-revived'
  s.license = 'GNU GPL v3'

  s.author   = 'Damian Nowak'
  s.email    = 'nowaker@pacmanvps.com'
  s.homepage = 'https://github.com/Nowaker/ruby-ansi-sys-revived'

  s.files = `git ls-files lib`.split($/)
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 1.9.3'
  s.required_rubygems_version = '>= 1.8.11'

  s.add_development_dependency 'codeclimate-test-reporter'
  s.add_development_dependency 'bundler', '~> 1.5'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 2.14'
  s.add_development_dependency 'rspec-core', '~> 2.14'
end
