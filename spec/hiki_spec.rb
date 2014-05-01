# coding: utf-8
require 'spec_helper'
require 'nkf'


describe "As a Hiki plugin" do
	before do
		include 'webrick'
		class String
			def escape
				WEBrick::HTTPUtils.escape(self)
			end

			def to_euc
				NKF::nkf('-m0 -e', self)
			end
		end

		module Hiki
			class Conf
				def cache_path
					'./spec'
				end
			end

			class PluginError < StandardError; end

			class Plugin
				def initialize
					@page = '.'
					@conf = Conf.new
				end

				def load_plugin
					lib = 'lib/ansisys.rb'
					instance_eval(File.read(lib), lib, 1)
				end
			end
		end

		@plugin = Hiki::Plugin.new
		@plugin.load_plugin
	end

	it "should render an HTML fragment as expected" do
		@plugin.ansi_screen('test_data.txt').should == File.read('spec/attach/test_data.html')
	end

	it "should handle UTF-8" do
		@plugin.ansi_screen('test_utf8.txt').should be_true
	end
end

