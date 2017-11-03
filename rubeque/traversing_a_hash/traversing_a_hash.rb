class Hash
    def r_empty?
        if (self.each{|key,val| val.is_a?(Hash) ? !val.r_empty? : (val!=nil && val!="")})
            puts true
        else
            puts false
        end

    end
end

a = {:ruby => "", :queue => ""}
b = {:ruby => {:version => {:one => {"nine" => ""}, "two" => "=^.^="}}, :html => ""}
c = {:pets => {:dogs => {:my => {"niko" => ""}, "ollie" => ""}}, :cats => nil, :mice => ""}
d = {a: "", b: :two, c: ""}

puts a.r_empty? #=>, true
puts b.r_empty?#=>, false
puts c.r_empty?#=>, true
puts d.r_empty?#=>, false
puts ({}.r_empty?)#=>, true