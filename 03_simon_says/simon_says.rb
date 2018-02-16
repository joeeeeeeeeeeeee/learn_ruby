def echo(str)
	return str
end
def shout(str)
	return str.upcase
end
def repeat(str, num=2)
	return ((str + " ")*num).chop
end
def start_of_word(str,num)
	return str[0...num]
end
def first_word(str)
	return str.split(" ")[0]
end
def titleize(str)
	str = str.split(" ")
	str.map!.with_index{|c,i|
		if i == 0 || i == str.length - 1 || c.length > 4 #small words are for or less not a begining or end
			c[0] = c[0].upcase
		end
		c
	}
	return str.join(" ")
end