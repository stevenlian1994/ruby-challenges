# def shortest_path(graph, origin, destination)
# #   if !graph.has_key?(origin) || !graph.values.map(&:keys).flatten.include?(destination)
# #       return nil
# #     end
#     # p graph.has_key?(origin)
#     # p graph.values.map(&:keys).flatten.include?(destination)
#     p b = graph.dup
    
    

# end

def shortest_path(graph, origin, destination)

    def remove_key(graph, key)
      graph.dup.tap {|hash| hash.delete(key)}
    end

    def extend_route(graph, route)
      lastcity = route[-1]
      if graph.has_key?(lastcity)
        new_graph = remove_key(graph, lastcity)
        graph[lastcity].each do |nextcity, distance|
          new_route = route + [nextcity]
          @routes[new_route] = @routes[route] + distance
          extend_route(new_graph, new_route)
        end
      end
    end

    # { [NY,LA]=>10, [NY,LA,SF]=>12 }
    @routes = {}

    graph[origin].each do |nextcity, distance|
      route = [origin, nextcity]
      @routes[route] = distance
      new_graph = remove_key(graph, origin)
      extend_route(new_graph, route)
    end

    all_paths = @routes.select {|route| route[-1] == destination}
    return nil if all_paths.empty?
    all_paths.sort_by {|route, distance| distance}.first.first
end


    graph = {
    "San Francisco" => {"Chicago" => 2132,
                        "Dallas" => 1734},
    "Chicago" => {"Durham" => 781},
    "Dallas" => {"Durham" => 1176}
    }
    
 p shortest_path(graph, "San Francisco", "Durham")

