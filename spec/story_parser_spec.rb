require 'spec_helper'

describe StoryParser do

	it "builds an empty hash from an empty story" do
		StoryParser.new.parse( "" ).should == {}
	end

end