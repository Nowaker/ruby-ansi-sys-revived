unless RUBY_VERSION =~ /^1\.8/
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
end

require 'ansisys'
require 'pp'
require 'test/unit/assertions'

RSpec.configure do |config|
  include Test::Unit::Assertions

  config.color_enabled = true
  config.tty = true
end
