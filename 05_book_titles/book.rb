class Book
	def title
		@title
	end
	def title=(title)
		@title = titleize(title)
	end
end
def titleize(str)
	str = str.split(" ")
	small_words = ["a","an","the","and","in","of"]
	str.map!.with_index{|c,i|
		if i == 0 || !small_words.include?(c)
			c[0] = c[0].upcase
		end
		c
	}
	return str.join(" ")
end
