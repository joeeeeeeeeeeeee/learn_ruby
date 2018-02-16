def translate1(str)
	consts = countConst(str)
	unless consts == 0 #starts with vowell
		first_letters  = str[0..consts-1]
		str[0..consts-1] = ""
		str += first_letters
	end
	str += "ay"

end
def translate(str)
	str.split(" ").map{|x|translate1(x)}.join(" ")
end

def countConst(str)
	vowels = ["a","e","i","o","u"]
	count = 0
	const = true
	while(count<str.length&&const==true)
		if vowels.include?(str[count])
			const = false
		elsif str[count,2]=="qu"
			count +=2
			const = false
		else
			count += 1
		end
	end
	return count
end


