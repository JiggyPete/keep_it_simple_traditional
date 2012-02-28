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

	it "randomly picks first word from list of possible values" do
		author = Author.new( {"wish I" => ['may', 'might']} )
		Kernel.stub(:rand).and_return(0)
		author.new_story_from("wish I" ).should == "wish I may"
	end

	it "randomly picks second word from list of possible values" do
		author = Author.new( {"wish I" => ['may', 'might']} )
		Kernel.stub(:rand).and_return(1)
		author.new_story_from("wish I").should == "wish I might"
	end



end