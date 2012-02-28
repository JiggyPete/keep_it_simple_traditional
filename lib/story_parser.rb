class StoryParser

	WORDS_PER_ENTRY = 3

	def parse(story)
		words = story.split
		result = {}
		return result if words.length < WORDS_PER_ENTRY

		number_of_entries = (words.length - (WORDS_PER_ENTRY-1))
		number_of_entries.times do |i|
			result["#{words[i]} #{words[i+1]}"] ||= []
			result["#{words[i]} #{words[i+1]}"] << words[i+2]
		end
		result
	end

end