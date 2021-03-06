def happy_number?(int)
  if int == 1 
  	return true
	else
		begin
		  #if we recurve infintetly, system stack error appears, rescue this exception and run a different block of code (return false)
			happy_number?(int.to_s.split("").map{|e| e.to_i.**2  }.inject(:+))
			
		rescue SystemStackError
			return false
		end
	end
end

# http://blog.honeybadger.io/a-beginner-s-guide-to-exceptions-in-ruby/ article talking about how to deal with exceptions

#OTHER INTERESTING SUBMISSIONS BY OTHER DEVS

# def happy_number?(n)
#   cache = []
#   x = n

#   until cache.include?(x) or x == 1
#     cache << x
#     digits = x.to_s.chars.map(&:to_i)
#     x = digits.inject(0){|sum, digit| sum + digit**2}
#   end

#   x == 1
# end

# def happy_number?(n)
#   past = []
#   20.times do
#     n = n.to_s.split('').map(&:to_i).map { |e| e * e}.reduce(:+)
#     return false if past.index(n)
#     return true if n == 1
#     past << n
#   end
# end

# Happy numbers are positive integers that follow a particular formula: 
# take each individual digit, square it, and then sum the squares to get a new number. 
# Repeat with the new number and eventually, you might get to a number whose squared sum is 1. 
# This is a happy number.
# An unhappy number (or sad number) is one that loops endlessly. Write a function that determines 
# if a number is happy or not.