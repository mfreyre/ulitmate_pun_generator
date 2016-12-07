
class Substring

	def initialize()
		@results = []
	end
	
	def generate(word)
		@results.push(word)
		if word.length == 1
			return
		else
			generate(word[0,word.length-1])
			generate(word[1,word.length])
		end
	end

	def results
		return @results.uniq
	end

end



substring = Substring.new
substring.generate("hello")
print substring.results
print "\n"
