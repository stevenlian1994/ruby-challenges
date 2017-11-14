def shortest_path(graph, origin, destination)
    m = [
       [0, 2132, 1734, 0],
       [2132, 0, 0, 781],
       [1734, 0, 0, 1176],
       [0, 781, 1176, 0]
       ]
    # puts m.length #=> array of arrays of length 4
    
    # scratch
    # n = []
    # n << ["", "San Francisco", "Chicago", "Dallas", "Durham"]
    # n << ["San Francisco", 0, 9999, 9999, 9999]
    # n << []
    
    
     n = [
        ["", "San Francisco", "Chicago", "Dallas", "Durham"],
        ["San Francisco", 0, 9999, 9999, 9999],
        ["Dallas", 0, 2132, 1734, 9999],
        ["Chicago", 0, 2132, 1734, 2910],
        ["Durham", 0, 2132, 1734, 2910]
        ]
        
    path=[]
    dest=n[4][4]
    path << n[4][0]
    
    if dest != n[3][4]
        path << n[3][0]
    end
    if dest != n[2][4]
        path << n[2][0]
        x = n[2][0]
        y = n[0].index(x) #=> 3
        
        if n[2][y] != n[1][y]
            path << n[1][0]
        end
    end
    puts path #=> Durham Dallas San Francisco
    

end


    graph = {
    "San Francisco" => {"Chicago" => 2132,
                        "Dallas" => 1734},
    "Chicago" => {"Durham" => 781},
    "Dallas" => {"Durham" => 1176}
    }
    
shortest_path(graph, "San Francisco", "Durham")

