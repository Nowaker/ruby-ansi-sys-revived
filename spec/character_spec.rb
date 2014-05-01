# coding: utf-8
require 'spec_helper'


include AnsiSys
# This spec is dependent upon Screen, Cursor, and SGR

def echo(string, col, row)
	@screen = Screen.new
	@char = Characters.new(string, SGR.new)
	@cursor = Cursor.new(col, row, 80, 25)
	@char.echo_on(@screen, @cursor)
end

describe Characters, "when rendered at the right edge" do
  before do
		echo("Test string <HELLO>", 75, 1)
  end

	it "should fold the string at the right edge" do
		@cursor.cur_row.should == 2
		@cursor.cur_col.should == 14
	end
end

describe Characters, "with Polish UTF-8 characters" do
	before do
		echo('ąść', 1, 1)
	end

	it "should assume three characters occupy 3 columns" do
		@cursor.cur_col.should == 1 + 3
	end
end

describe Characters, "with tab" do
	before do
		echo("\t", 1, 1)
	end

	it "should assume it occupies 8 columns" do
		@cursor.cur_col.should == 1 + 8
	end
end


