def shortest_path(graph, origin, destination)
    ___
end

graph = {
    "San Francisco" => {"Chicago" => 2132,
                        "Dallas" => 1734},
    "Chicago" => {"Durham" => 781},
    "Dallas" => {"Durham" => 1176}
}

# Analyzing graph 1.0
# graph = {
#     "San Francisco" => {"Chicago" => 2132, "Dallas" => 1734}, 
#                         "Chicago" => {"Durham" => 781}, 
#                         "Dallas" => {"Durham" => 1176}
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