require 'spec_helper'

describe StoryParser do

	it "builds an empty hash from an empty story" do
		StoryParser.new.parse( "" ).should == {}
	end

	it "builds an empty hash from a single word story" do
		subject.parse( "I" ).should == {}
	end
	
	it "builds an empty hash from a two word story" do
		subject.parse( "I wish" ).should == {}
	end

end