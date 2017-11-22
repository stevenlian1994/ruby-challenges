# districts = []
# districts << [ [0,0] , [0,1] , [0,2] , [0,3] , [0,4] , [1,1] ]
# districts << [ [1,2] , [1,3] , [1,4] , [1,5] , [0,5] , [2,3] ]
# districts << [ [1,0] , [2,0] , [2,1] , [2,2] , [3,0] , [3,2] ]
# districts << [ [2,4] , [2,5] , [3,5] , [4,4] , [4,5] , [5,5] ]
# districts << [ [3,1] , [3,3] , [3,4] , [4,1] , [4,2] , [4,3] ]
# districts << [ [4,0] , [5,0] , [5,1] , [5,2] , [5,3] , [5,4] ]

# buildings = {
#     'A' => [0,0],  'B' => [1,4],  'C' => [3,3],
#     'D' => [4,4],  'E' => [5,2],  'F' => [5,3],
# }

# class Array
#   def i; self[0]; end
#   def j; self[1]; end
# end

# module Helper
#   STREET_LENGTH = 6
#   ROW = (0..(STREET_LENGTH-1))  
#   def iterate(obj=nil, &block)
#     ROW.each{ |i|
#       ROW.each{ |j| block.(i,j, obj) }
#     }
#     obj
#   end
# end  
# ___

# answer = [["A", "E", "B", "D", "C", "F"], 
#           ["E", "F", "C", "A", "B", "D"], 
#           ["B", "C", "D", "E", "F", "A"], 
#           ["F", "D", "A", "C", "E", "B"], 
#           ["C", "A", "F", "B", "D", "E"], 
#           ["D", "B", "E", "F", "A", "C"]]

# res =  Solver.new(districts, buildings).solve
# assert_equal res, answer

# Tags:
# algorithm, math, random, optimization

# Instructions:
# 	You are an architect of SixCity. SixCity's architecture is quite special. It has unbreakable rules. There are only 6 types of buildings: Shop, Gym, Theatre, Restaurant, Club & Office. There are 6 buildings of these types in the city. Geographically, SixCity is a square 6x6. Basically, it is 36 cells with buildings inside. Also, there are 6 districts in SixCity, and each district includes 6 buildings. Districts may take on interesting forms.
# However, the headache you have as architect are the rules of a building's location. Each row, column, and district of the city should contain buildings of each type. Now you have a map with districts, and a few buildings of different types (call them A,B,C,D,E,F) already located there. You should find what building should stay inside each empty cell.
# You should implement class Solver. The Solver constructor receives districts (a matrix of district coordinates) and buildings (a hash with a building name as a key, and coordinates as a value). Use this data to implement the solve method to return a matrix of letters A,B,C,D,E,F. 

# Hint: You may use helpers defined in the code below.
# Note: There is ZeegsCity with the same problem but another input data. You should solve the architecture for it too in order to pass this task.