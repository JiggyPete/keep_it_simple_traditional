class Author
	def initialize(inspiration)
		@inspiration = inspiration
	end

	def new_story_from( key_pair )
		return "" if key_pair == ""

		result = [key_pair]		
		while @inspiration[key_pair] != nil
			possible_third_words = @inspiration[key_pair]
			index = Kernel.rand(possible_third_words.length)
			third_word = possible_third_words[index]
			result << third_word
			key_pair = "#{key_pair.split[1]} #{third_word}"
		end
		result.join( ' ' )
	end
end