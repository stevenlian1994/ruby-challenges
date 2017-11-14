


hash = {name: nil, email: 'test@example.com'} 

# puts hash[:name] #=> nil
puts hash.fetch(:name)
# puts hash.fetch(:username)
puts hash[:name]
puts hash[:username]

def hash_query hash, key
    hash.fetch(key)
end

