#TrueClass and FalseClass instances have data vs. NilClass doesn't have data
#So instead of comparing class between elements, we will create a type method
#which will return type when called and we will set TC and FC to 'boolean'
#while everything else will be of type self.class(their orig. class)
class Object
  def type
    self.class
  end
end
class TrueClass
  def type
    'boolean'
  end
end
class FalseClass
  def type
    'boolean'
  end
end

def nonmatching(array)
    #create new Hash with array(key:  array[0].type value: array[0])
    newHash = array.group_by{|val| val.type } 
    #array(int, int, String)
    #newHash.each{|k,v| puts v.length} #=> first_test: puts 5 puts 1
    
    a = newHash.min_by {|k,v| v.length }
    #min_by returns key:value element with lowest amount of values
    a.flatten! 
    #we flatten because newHash is Hash of arrays => turn into Array, easier access 
    return a[1]
end


puts nonmatching([1, 2, 3, 4.0, 5, 6])
puts nonmatching(["ichi", "visitor q", 13, "assassins"])
puts nonmatching([/2001/, "full metal jacket", /paths of glory/])
puts nonmatching([true, false, nil, (1==1)])
