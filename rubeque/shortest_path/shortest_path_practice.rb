def shortest_path(graph, origin, destination)
    
    graph.include?
    
    
    
     paths_to_destination = graph.select{|key,hash| hash[destination].class == Integer}.flatten.map{|e| e.class==Hash ? e.to_a : e}.flatten
     p = paths_to_destination
    # puts paths_to_destination.class #=> Array of size 6
    if p.include?(origin) 
        puts p[p.index(origin)..(p.index(destination)+1)]
    end

    

    # a = graph.select{|key,hash| hash[paths_to_destination[0]].class == Integer} #=> {"San Francisco"=>{"Chicago"=>2132, "Dallas"=>1734}}
    # b = a.select{|key, value| value.delete_if{|k,v| k!=paths_to_destination[0]}} #=> {"San Francisco"=>{"Chicago"=>2132}} -> hash
    # c = b.flatten.map{|e| e.class==Hash ? e.to_a : e}.flatten
    # paths_to_destination[0] = c
    # puts d = paths_to_destination.flatten
    
    

end
    graph = {
    "San Francisco" => {"Chicago" => 2132,
                        "Dallas" => 1734},
    "Chicago" => {"Durham" => 781},
    "Dallas" => {"Durham" => 1176}
    }
shortest_path(graph, "Chicago", "Durham")

