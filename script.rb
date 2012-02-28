$: << 'lib'
require 'story_parser'
require 'author'

text = "I wish I may I wish I might"

parser = StoryParser.new
trigram_structure = parser.parse( text )

author = Author.new( trigram_structure )
100.times do
	puts author.new_story_from( "I wish" )
end
