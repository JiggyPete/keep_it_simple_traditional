class StoryParser

	WORDS_PER_ENTRY = 3

	def parse(story)
		words = story.split		
		return {} if words.length < WORDS_PER_ENTRY

		build_entries words
	end

	private 

	def build_entries(words)
		result = {}

		number_of_entries = (words.length - (WORDS_PER_ENTRY-1))
		number_of_entries.times do |i|
			key = "#{words[i]} #{words[i+1]}"
			third_word = words[i+2]
			result[key] ||= []
			result[key] << third_word
		end
		
		result		
	end

end