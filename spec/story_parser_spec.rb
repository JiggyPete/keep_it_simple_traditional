require 'spec_helper'

describe StoryParser do

	context "builds an empty hash" do
		it "from an empty story" do
			subject.parse( "" ).should == {}
		end

		it "from a single word story" do
			subject.parse( "I" ).should == {}
		end

		it "from a two word story" do
			subject.parse( "I wish" ).should == {}
		end
	end

	it "builds a hash from a three word story" do
		subject.parse( "I wish I" ).should == {'I wish' => 'I'}
	end

	it "builds a hash from a four word story" do
		subject.parse( "I wish I may" ).
			should == {'I wish' => ['I'],
								'wish I' => ['may']}
	end

end