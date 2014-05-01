# coding: utf-8
require 'spec_helper'


script = File.join('bin', 'ansi-to-html')
source = File.join('spec', 'attach', 'test_utf8_wide.txt')
target = File.join('spec', 'attach', 'test_utf8_wide.rendered.txt')

describe "when rendering a UTF-8 text" do
	it "should fold characters as expected" do
    ENV['LANG'] = 'en_US.UTF-8'
		`ruby -Ilib #{script} #{source}`.should include(File.read(target).chomp)
	end
end

