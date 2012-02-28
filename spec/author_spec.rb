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

	context "randomly picks" do
		it "randomly picks first word from list of possible values" do
			author = Author.new( {"wish I" => ['may', 'might']} )
			Kernel.stub(:rand).with(2).and_return(0)
			author.new_story_from("wish I" ).should == "wish I may"
		end

		it "randomly picks second word from list of possible values" do
			author = Author.new( {"wish I" => ['may', 'might']} )
			Kernel.stub(:rand).with(2).and_return(1)
			author.new_story_from("wish I").should == "wish I might"
		end
	end

	it "starts the story from the supplied first key" do
		trigrams = {"I wish" => ["I"],
								"tasty cheesy" => ['wotsits']}
		subject = Author.new( trigrams )		
		subject.new_story_from( "I wish" ).should == "I wish I"		
	end

	it "starts the story from the supplied second key" do
		trigrams = {"I wish" => ["I"],
								"tasty cheesy" => ['wotsits']}
		subject = Author.new( trigrams )		
		subject.new_story_from( "tasty cheesy" ).should == "tasty cheesy wotsits"		
	end

	it "builds a new key and continues the story" do
		subject = Author.new( {"wish I" => ['may', 'might'],
													"I may" => ["I"]} )
		Kernel.stub(:rand).and_return(0)
		subject.new_story_from("wish I").should == "wish I may I"		
	end
	
end