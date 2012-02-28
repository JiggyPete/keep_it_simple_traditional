require 'spec_helper'

describe Author do 
	
	it "suffers from writers block when given an empty trigram set" do
		subject = Author.new( {} )
		subject.new_story_from( "" ).should == ""
	end

	it "writes a short story when trigram set has a single key with a single value" do
		subject = Author.new( {"I wish" => ['I']} )
		subject.new_story_from("I wish").should == "I wish I"
	end

end