# coding: utf-8
unless RUBY_VERSION =~ /^1\.8/
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
end

require 'ansisys'
require 'pp'

RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
end

