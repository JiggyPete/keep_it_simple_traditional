class StoryParser

	def parse(story)
		words = story.split
		if words.length == 3
			{"#{words[0]} #{words[1]}" => words[2]}
		else
			{}
		end
	end

end