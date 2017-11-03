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
