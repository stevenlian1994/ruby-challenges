def valid_credit_card?(num)
#STEP 1: TURN STRING 'num' INTO ARRAY OF STRINGS
	a = num.split('')
	#STEP 2: TURN A[STRINGS] TO A[INTS]
	a.map! {|v| v.to_i}
	#STEP 3: IF 'num' IS ODD, DOUBLE EVER OTHER "even" ELEMENT, and VICE-VERSA
	if (a.length%2==0)
		  a.map!.with_index{|v,i| i % 2 == 0 ? v*2 : v}
	end
	if (a.length%2!=0)
		 a.map!.with_index{|v,i| i % 2 == 0 ? v : v*2}
	end
	#STEP 4: SPLIT ALL INTS INTO SINGLE DIGIT INTS
		#STEP 4.1: TURN INTS INTO STRINGS (INTS ARE FIXED AND CANNOT SPLIT #// 12 => 1 2 // IS IMPOSS.)
		a.map! {|v| v.to_s}
		#STEP 4.2: TURN A[STR, STR, .., STR] TO STR, SO WE CAN SPLIT IT
		b = a.join('')  #=> 8408042264106148183
		## puts a.class  #=> ARRAY
		## puts b #=> String of 8408042264106148183
		## puts b.class #=> String
		#STEP 4.3 SPLIT INTO ARRAY OF IND. STRINGS #//C["4", "3" ..]
		c = b.split('')
		##puts b.class  #=> String
		##puts c.class  #=>  Array
		##puts c[4].class #=>  String
		#STEP 4.4 MAP INTO INTS
		c.map! {|v| v.to_i}
		##puts c[3].class #=> int

	#STEP 5 WITH ARRAY OF INTS WE CAN SUM 
	d = c.inject(:+)  #=> int
	##puts d.class   #=> ARRAY

	#STEP 6 % sum by 10
	if(d%10==0)
		return true
	else
		return false
	end
end
	
	# puts valid_credit_card?("1234567890123456") #=> false
	# puts valid_credit_card?("4408041234567893")#=> true
	# puts valid_credit_card?("440804l234567893")#=> false
	# puts valid_credit_card?("38520000023237")#=> true 
	# puts valid_credit_card?("4222222222222")#=> true 