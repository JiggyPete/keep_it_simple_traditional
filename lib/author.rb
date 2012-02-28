class Author
	def initialize(inspiration)
		@inspiration = inspiration
	end

	def new_story_from( key_pair )
		return "" if key_pair == ""

		result = [key_pair]		
		while @inspiration[key_pair] != nil
			third_word = next_word( key_pair )
			result << third_word
			key_pair = next_pair( key_pair, third_word )
		end
		result.join( ' ' )
	end

	def next_word( key_pair )
		possible_third_words = @inspiration[key_pair]
		index = Kernel.rand(possible_third_words.length)
		possible_third_words[index]		
	end

	def next_pair( key_pair, third_word )
		"#{key_pair.split[1]} #{third_word}"
	end
end