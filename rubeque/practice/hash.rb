# def conditional(n)
#   if (n % 3 == 0) && (n % 5 != 0)
#     'Fizz'
#   elsif (n % 3 != 0) && (n % 5 == 0)
#     'Buzz'
#   elsif (n % 3 == 0) && (n % 5 == 0)
#     'FizzBuzz'
#   else n
#   end
# end

# (1..100).each {|n| puts conditional(n)}

# def declarative(n)
#     h = {
#         "Fizz" => (n % 3 == 0) && (n % 5 != 0),
#         "Buzz" => (n % 3 != 0) && (n % 5 == 0),
#         "Fizzbuzz" => (n % 3 == 0) && (n % 5 == 0),
#         n => (n % 3 != 0) && (n % 5 != 0)
#     }
#     h.key(true)
# end

# (1..100).each {|n| puts declarative(n)}

#memoization

memoization ||= Hash.new do |hash, key|
    hash[key] = case
    when (key % 3 == 0) && (key % 5 != 0)
        "Fizz"
    when (key % 3 != 0) && (key % 5 == 0)
        "Buzz"
    when (key % 3 == 0) && (key % 5 == 0)
        "Fizzbuzz"
    else key
    end
end

 (1..100).each { |n| memoization[n]}
 
