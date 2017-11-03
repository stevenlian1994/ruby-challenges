def valid_credit_card?(num)
	a = num.split('')

	a.map! {|v| v.to_i}

	if (a.length%2==0)
		  a.map!.with_index{|v,i| i % 2 == 0 ? v*2 : v}
	end
	
	if (a.length%2!=0)
		 a.map!.with_index{|v,i| i % 2 == 0 ? v : v*2}
	end
	
	a.map! {|v| v.to_s}

	b = a.join('')

	c = b.split('')
	
	c.map! {|v| v.to_i}

	d = c.inject(:+) 

	
	if(d%10==0)
		return true
	else
		return false
	end
end


puts valid_credit_card?("1234567890123456") #=> false
puts valid_credit_card?("4408041234567893")#=> true
puts valid_credit_card?("440804l234567893")#=> false
puts valid_credit_card?("38520000023237")#=> true 
puts valid_credit_card?("4222222222222")#=> true 

#REMINDER:  ruby cc_validation.rb to run