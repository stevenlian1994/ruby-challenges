def shortest_path(graph, origin, destination)
    #Step 1: first determine how big the matrix is going to be
    # Comb through the hash to get number of unique keys
    @number_of_cities = []

    a = graph.flatten
    b = a.map{|e| e.class == Hash ? e.flatten : e}
    c = b.each{|e| e.class == Array ? e.each{|v| @number_of_cities << v} : @number_of_cities << e }
    
    @number_of_cities.select!{|e| e.class == String}.uniq!.length

    
    p a_matrix = Array.new(@number_of_cities.length){Array.new([0]*@number_of_cities.length)}
    @preD = [@number_of_cities.length]
    @min = 999
    @nextNode = 0
    @distance = [@number_of_cities.length]
    @visited = [@number_of_cities.length]
    
    (0 .. @number_of_cities.length-1).each do |x|
        @visited[x] = 0 #initialize visited array to zeroes
        
        @preD[x] = 0
        
        (0 .. @number_of_cities.length-1).each do |y|
            # p a_matrix[x][y]
            a_matrix[x][y]
        end
    end
            
          
        
        
    #     end
    # end
#     	m = Array.new(string_one.length){[0]*string_two.length}
# 	longest_length = 0
# 	longest_end_pos = 0

# 	(0 .. string_one.length-1).each do |x|
# 		(0 .. string_two.length-1).each do |y|
# 			if(string_one[x] == string_two[y])
# 				m[x][y] = 1
# 				if(x>0 && y>0)
# 					m[x][y] += m[x-1][y-1]
# 				end
# 				if m[x][y] > longest_length
# 					longest_length = m[x][y]
# 					longest_end_pos = x
# 				end
# 			end		
# 		end
# 	end
# 	return string_one[longest_end_pos-longest_length+1..longest_end_pos]
# end
end


    graph = {
    "San Francisco" => {"Chicago" => 2132,
                        "Dallas" => 1734},
    "Chicago" => {"Durham" => 781},
    "Dallas" => {"Durham" => 1176}
    }
    
shortest_path(graph, "San Francisco", "Durham")

    cities_array = ["San Francisco", "Chicago", "Dallas", "Durham"]

#     m = [
#       [0, 2132, 1734, 0],
#       [2132, 0, 0, 781],
#       [1734, 0, 0, 1176],
#       [0, 781, 1176, 0]
#       ]
#     # puts m.length #=> array of arrays of length 4
    
#     # scratch
#     # n = []
#     # n << ["", "San Francisco", "Chicago", "Dallas", "Durham"]
#     # n << ["San Francisco", 0, 9999, 9999, 9999]
#     # n << []
    
#     #Djikstra's algorithm 
#      n = [
#         ["", "San Francisco", "Chicago", "Dallas", "Durham"],
#         ["San Francisco", 0, 9999, 9999, 9999],
#         ["Dallas", 0, 2132, 1734, 9999],
#         ["Chicago", 0, 2132, 1734, 2910],
#         ["Durham", 0, 2132, 1734, 2910]
#         ]
        
#     n = [

# SF  [ 0, 9999, 9999, 9999],
# DAL [ 0, 2132, 1734, 9999],
# CHI [ 0, 2132, 1734, 2910],
# DUR [ 0, 2132, 1734, 2910]   
#     ]
        
#     path=[]
#     dest=n[4][4]
#     path << n[4][0]
    
#     if dest != n[3][4]
#         path << n[3][0]
#     end
#     if dest != n[2][4]
#         path << n[2][0]
#         x = n[2][0]
#         y = n[0].index(x) #=> 3
        
#         if n[2][y] != n[1][y]
#             path << n[1][0]
#         end
#     end
#     puts path #=> Durham Dallas San Francisco