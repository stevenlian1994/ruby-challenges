class Hash
  def r_empty?
    ___
  end
end

a = {:ruby => "", :queue => ""}
b = {:ruby => {:version => {:one => {"nine" => ""}, "two" => "=^.^="}}, :html => ""}
c = {:pets => {:dogs => {:my => {"niko" => ""}, "ollie" => ""}}, :cats => nil, :mice => ""}
d = {a: "", b: :two, c: ""}

assert_equal a.r_empty?, true
assert_equal b.r_empty?, false
assert_equal c.r_empty?, true
assert_equal d.r_empty?, false
assert_equal ({}.r_empty?), true