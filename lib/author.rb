class Author
	def initialize(inspiration)
		@inspiration = inspiration
	end

	def new_story_from( key_pair )
		key_pair == "" ? "" : "#{key_pair} #{@inspiration[key_pair].first}"
	end
end