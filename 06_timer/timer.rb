class Timer
	def initialize
		@seconds = 0
	end
	def seconds
		@seconds
	end
	def seconds=(seconds)
		@seconds = seconds
	end
	def time_string
		hours = @seconds/3600
		seconds_left = @seconds%3600
		minutes = seconds_left/60
		seconds = seconds_left%60
		return "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
	end
end

def padded(num)
	if num<10
		num = "0" + num.to_s
	end
	return num.to_s
end
