class Author
	def initialize(inspiration)
		@inspiration = inspiration
	end

	def new_story_from( key_pair )
		return "" if key_pair == ""
		
		possible_third_words = @inspiration[key_pair]
		index = Kernel.rand(possible_third_words.length)
		third_word = possible_third_words[index]
		"#{key_pair} #{third_word}"
	end
end