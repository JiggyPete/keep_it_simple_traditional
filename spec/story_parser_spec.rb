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
			should == {'I wish' => 'I',
								'wish I' => 'may'}
	end
	

	it "builds a hash from a five word story" do
		subject.parse( "I wish I may I" ).
			should == {'I wish' => 'I',
								 'wish I' => 'may',
								 'I may' => 'I'}
	end

	it "builds a hash from a six word story" do
		subject.parse( "I wish I may I wish" ).
			should == {'I wish' => 'I',
								 'wish I' => 'may',
								 'I may' => 'I',
									'may I' => 'wish'}
	end

	it "builds a hash with multiple values from a story with repeating pair" do
		subject.parse( "I wish I may I wish I" ).
			should == {'I wish' => ['I', 'I'],
								 'wish I' => ['may'],
								 'I may' => ['I'],
									'may I' => ['wish']}
	end



end