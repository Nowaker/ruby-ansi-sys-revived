version = '0.8.4'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'ansi-sys-revived'
  s.version     = version
  s.summary     = 'A library to render texts with ANSI escape sequences. Revived from RubyForge.'

  s.required_ruby_version     = '>= 1.9.3'
  s.required_rubygems_version = '>= 1.8.11'

  s.license = 'GNU GPL v3'

  s.author   = 'Damian Nowak'
  s.email    = 'nowaker@pacmanvps.com'
  s.homepage = 'https://github.com/Nowaker/ruby-ansi-sys-revived'

  s.files = `git ls-files lib`.split($/)
end
