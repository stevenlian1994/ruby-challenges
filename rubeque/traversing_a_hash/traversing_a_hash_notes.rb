class Hash
    def r_empty?
    	# puts values #=> returns Hash and values 
    	# puts values.class #=> all Arrays
    	#STEP 1: Pass each element in the the hash(and elements in nested hashes through a block, return true if we never get false or nil)
    	    #Step 1.1 : Recurse if we element is a Hash
    	#STEP 2: create a condition where if element is not nil or "" return false -> which will make .all? method return a false value 
    	
    	self.values.all? {|val| 
    	# The all? method returns true if the block never returns false or nil for any element passed to it:
    	if val.class == Hash then 
    		# base case = if value is not a hash then we will stop recursing
    		val.r_empty? 
    	else
    		(val==nil || val=="")  
    		### puts a = (2==1) #=>false, boolean expression returns true or false
    	end
    	}
    end
end
    	
    	# Used ternary operator for answer
    	
		# if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this
		
		# SAME AS
		# question = if question.size > 20 then
		#   question.slice(0, 20) + "..."
		# else 
		#   question
		# end
		    	
#=================================================================================	

a = {:ruby => "", :queue => ""}
b = {:ruby => {:version => {:one => {"nine" => ""}, "two" => "=.="}}, :html => ""}
c = {:pets => {:dogs => {:my => {"niko" => ""}, "ollie" => ""}}, :cats => nil, :mice => ""}
d = {a: "", b: :two, c: ""}

puts a.r_empty? #=>, true 
puts b.r_empty?#=>, false
puts c.r_empty?#=>, true
puts (d.r_empty?)#=>, false
puts ({}.r_empty?)#=>, true

#=================================================================================	

# class Hash
#     def r_empty?
#         def recurse(h)
#         	 h.each {|key, value|                      #=> .each method returns original array and not the value calculated within the code , its an iterator
#         		 value.is_a?(Hash) ? recurse(value) :  #=> we build array of true false v1alues
#             	if (value!=nil && value!="")          #=> i thought return false would cancel all the code for the method, but not if its enumerable where it goes through each element
#             		puts "hello"
#             		puts value
            		
#             		# puts value.class
#             # 		return false
#             		# break false
#             	end
#         	}
        			        
#         end
# 		 recurse(self)
#     end
# end

# a = {:ruby => "", :queue => ""}
# b = {:ruby => {:version => {:one => {"nine" => ""}, "two" => "=.="}}, :html => ""}
# c = {:pets => {:dogs => {:my => {"niko" => ""}, "ollie" => ""}}, :cats => nil, :mice => ""}
# d = {a: "", b: :two, c: ""}

#  a.r_empty? #=>, true 
#  b.r_empty?#=>, false
# puts c.r_empty?#=>, true
# puts (d.r_empty?)#=>, false
# puts ({}.r_empty?)#=>, true

