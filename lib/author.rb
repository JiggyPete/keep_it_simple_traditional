class Author
	def initialize(inspiration)
		@inspiration = inspiration
	end

	def new_story_from( key_pair )
		return "" if key_pair == ""
		
		third_word = @inspiration[key_pair].first
		"#{key_pair} #{third_word}"
	end
end