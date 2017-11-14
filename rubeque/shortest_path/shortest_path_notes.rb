def shortest_path(graph, origin, destination)
    a = graph.map{|k,v| 
        if v.class == Hash 
            shortest_path(v, origin, destination) 
        else
    
    
    a = graph.select{|k,v| 
        # puts "#{k} is #{v}"
        if v.class == Hash 
            shortest_path(v, origin, destination) 
        else
            if k==destination
                return graph
            end
        end
    }
    puts a.keys
    # puts a.class #=> hash

    
    #loop through hash, for which key is a[keys] and value = integer, return that hash
    
end
    
    
    graph = {
    "San Francisco" => {"Chicago" => 2132,
                        "Dallas" => 1734},
    "Chicago" => {"Durham" => 781},
    "Dallas" => {"Durham" => 1176}
}
shortest_path(graph, "San Francisco", "Durham")

# puts graph.select {|city| city[{"Durham" => 781}]}



#Analyzing graph: 1st hash(graph) has 3 k:v pairs
# San Francisco is {"Chicago"=>2132, "Dallas"=>1734}
# Chicago is {"Durham"=>781}
# Dallas is {"Durham"=>1176}









# Analyzing graph 1.0
# graph = {
#     "San Francisco" => {"Chicago" => 2132, "Dallas" => 1734}, "Chicago" => {"Durham" => 781}, "Dallas" => {"Durham" => 1176}
# }

# Analyzing graph 2.0
# 1st hash: 1 key, 3 values
    #2nd hash: 2 keys, 2 values
    #3rd hash: 1 key, 1 value
        #3.1th hash: 1 k,v
    #4th hash: 1 key, 1 value
        #4.1th hash: 1 k,v
        
#Pseudo-code, traversing graph
    # loop through each k:v pair, if v is hash, loop through that hash..?
    



# Pseudo-code
# We are passed 3 arguments, a hash(graph), a String (origin), and another String( destination)
#Initial thought is brute force - turn the hash into arrays of all possibilities
#SF -> CHI->DUR, SF->DALLAS->DUR
# step 1 turn hash into array, if k:v pair, where v is hash, then create subarrays
#if array has (origin) left of (destination), delete all the values left of origin and right of destination (except for its value)
#create a new array which saves all integer values



#Second approach will be to start with Origin, ask it if the values of Key(Origin) is destination, if not recurse with one value and store(sum) the value,  
# if value is destination, sum one last time and save to a variable, then compare somehow





# shortest_path(graph, "San Francisco", "Durham"), ["San Francisco", "Dallas", "Durham"]
# shortest_path(graph, "Durham", "San Francisco"), nil


# Difficulty:
# Hard

# Instructions:
# Given a set of distances between pairs of locations, a source location, and a destination location
# return an array of locations visited when traversing the shortest path between the source and destination locations.
# The source and destination locations should be included at the beginning and end of the visited locations list (respectively). 
# The set of distances is represented as a hash of hashes. The key of the outer hash is the source location name, the key of the 
# inner hash is the destination location name, and the value of the inner hash is the distance between those two points. 
# Distances are single-direction distances; just because the distance from A to B is 4, you cannot assume that the distance from B to A is also 4. 
# If a path does not exist between the source and destination locations passed to your method, return nil. 
# If negative distances exist, don't try to find a shortest path (as it may be infinite). Simply return "Error: Negative Distances in Graph"



# # You could use Enumerable#select:

# # clients.select{|key, hash| hash["client_id"] == "2180" }
# # #=> [["orange", {"client_id"=>"2180"}]]

    
# #     Use Hash#select or Array#select.

# # level_2_employees = infoHash["employee"].select {|k| k["level"] == "2"}
    
 
    
#     # puts a.class #=> hash

    
#     #loop through hash, for which key is a[keys] and value = integer, return that hash


#     # a = graph.select{|k,v| 
#     #     # puts "#{k} is #{v}"
#     #     if v.class == Hash 
#     #         shortest_path(v, origin, destination) 
#     #     else
#     #         if k==destination
#     #             return graph
#     #         end
#     #     end
#     # }
#     # # puts a #=> {"Chicago"=>{"Durham"=>781}, "Dallas"=>{"Durham"=>1176}}
#     # puts b = a.keys #=> array of Chicago and Dallas
#     # # need to return key value, where value is hash where key is b[0] and b[1]
    
#     # puts b[0].class
#     # puts graph["Chicago"].select {|v| v.class == Integer}
#     # puts graph.assoc(b[0])
    
#         # b = graph.select{|key, hash| hash["Durham"].class == Integer} #=> {"Chicago"=>{"Durham"=>781}, "Dallas"=>{"Durham"=>1176}}
#     # c = b.flatten #=> array of Chicago, {"Durham"=>781}, Dallas, {"Durham"=>1176}
#     # d = c.map{|e| e.class==Hash ? e.to_a : e }.flatten #array of Chicago, Durham, 781, Dallas, Durham, 1176     puts d.length #=> 6
#     # puts new_array_1 = [d[0], d[1], d[2]]

    
#      paths_to_destination = graph.select{|key,hash| hash[destination].class == Integer}.flatten.map{|e| e.class==Hash ? e.to_a : e}.flatten
#     z = paths_to_destination

#     # puts paths_to_destination.class #=> Array of size 6
    
#     # puts a = paths_to_destination.each_slice(3).to_a #=> array of arrays

#     a = graph.select{|key,hash| hash[paths_to_destination[0]].class == Integer} #=> {"San Francisco"=>{"Chicago"=>2132, "Dallas"=>1734}}
    
#     b = a.select{|key, value| value.delete_if{|k,v| k!=paths_to_destination[0]}} #=> {"San Francisco"=>{"Chicago"=>2132}} -> hash
    
#     c = b.flatten.map{|e| e.class==Hash ? e.to_a : e}.flatten
    
    
#     z[0] = c
#     d = z.flatten
    
#     puts graph #=> {"San Francisco"=>{"Chicago"=>2132}, "Chicago"=>{"Durham"=>781}, "Dallas"=>{"Durham"=>1176}}

    

    
    
#     # puts g = graph.select{|key,hash| hash[paths_to_destination[3]].class == Integer} #=> {"San Francisco"=>{"Chicago"=>2132, "Dallas"=>1734}}
#     # h = g.select{|key, value| value.delete_if{|k,v| k!=paths_to_destination[3]}} #=> {"San Francisco"=>{"Chicago"=>2132}} -> hash
#     # i = h.flatten.map{|e| e.class==Hash ? e.to_a : e}.flatten
    



    
    
    
    
    
#     # { |key, value| key.to_s.match(/^choice\d+/) }

#     # e = graph.select{|key, hash| hash["Chicago"].class == Integer }
#     # e["San Francisco"].delete_if{|key,value| key!="Chicago"}
#     # # puts d = e["San Francisco"].delete_if{|key,value| key!="Chicago"}
#     # puts e #=>{"San Francisco"=>{"Chicago"=>2132}}
#     # f = e.flatten 
#     # puts g = f.map{|e| e.class==Hash ? e.to_a : e}.flatten
    
#     # puts totalmiles = new_array_1[2] + g[2]
    
#     # puts f = graph.select{|key, hash| hash["Dallas"].class == Integer }
    
#     # puts b = graph.select{|key, hash| hash["Durham"].class == Integer }
#     # # puts a.class
#     # # puts b.class #=> Hash
#     # puts c = b.keys 
    
#     # puts graph["Chicago"].select {|v| v.class == Integer}