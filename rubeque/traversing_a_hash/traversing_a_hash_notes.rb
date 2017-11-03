class Hash
    def r_empty?
        #STEP 1: 'VALUES RETURNS ARRAY OF VALUES FROM HASH


        #=>  these are non-nil printed values  #=> these are all arrays
                                # for b {:version=>{:one=>{"nine"=>""}, "two"=>"=^.^="}}

                                # for c {:dogs=>{:my=>{"niko"=>""}, "ollie"=>""}}
                                # for d: two
        #Step 2: 'IF VALUE IS A HASH, CHECK THE VALUES OF THAT SUB-HASH'
        #create recursion method
        
        !values.any? do |val|
            val.is_a?(Hash) ? !val.r_empty? : (val!=nil && val!="")
            
        end
        
        a.each{|val| 
            if (val.class == Hash)
                val.values.each{|val|
                    
                    puts val # CASE B: {:one=>{"nine"=>""}, "two"=>"=^.^="} CASE C {:dogs=>{:my=>{"niko"=>""}, "ollie"=>""}}
                    puts val.class #Hash
                }
                
            end
                    
            
            
        }
        # puts b = a 
        
        # !values.any? do |val| #=> values are from Hash class
        #     val.is_a?(Hash) ? !val.r_empty? : (val && val!="") 
        # end
    end
end
        
    
# any?() public
# Enumerator method
# The method returns true if the block ever returns a value other than false or nil. 
# If the block is not given, Ruby adds an implicit block of {|obj| obj} 
# (that is any? will return true if at least one of the collection members is not false or nil.


a = {:ruby => "", :queue => ""}
b = {:ruby => {:version => {:one => {"nine" => ""}, "two" => "=^.^="}}, :html => ""}
c = {:pets => {:dogs => {:my => {"niko" => ""}, "ollie" => ""}}, :cats => nil, :mice => ""}
d = {a: "", b: :two, c: ""}

a.r_empty? #=>, true
b.r_empty?#=>, false
c.r_empty?#=>, true
# puts d.r_empty?#=>, false
# puts ({}.r_empty?)#=>, true