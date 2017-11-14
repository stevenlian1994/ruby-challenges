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
    return array.group_by{|thing| thing.type}.min_by {|k,v| v.length }.flatten![1]
end

puts nonmatching([1, 2, 3, 4.0, 5, 6])
puts nonmatching(["ichi", "visitor q", 13, "assassins"])
puts nonmatching([/2001/, "full metal jacket", /paths of glory/])
puts nonmatching([true, false, nil, (1==1)])

# OVER-RIDING PARENT CLASS METHOD: METHOD OVERRIDING
# There will be situations where certain properties of the super-class should not be inherited by a particular subclass. 
# METHOD OVERRIDING allows a subclass to provide a specific implementation of a method that is already provided by one of its superclasses.

class Bird  
  def fly(a)  
    puts "I am flying."  
  end  
end  
  
class Penguin < Bird  
  def fly(a) 
    if a>0 
      puts "Sorry. I'd rather swim."  
    else
      super(a)
    end
  end  
end  
  
p = Penguin.new  

p.fly(4)#=> Sorry I'd rather swim.  Fly method overriden
p.fly(-2)#=>"I am flying."


#PENGUIN IS SUB-CLASS OF BIRD
#TRUECLASS IS SUB-CLASS OF OBJECT