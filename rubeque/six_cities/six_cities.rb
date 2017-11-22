#GOAL: Create a dumbed down version of 6 cities without 'districts' 
# assign 0-5 to each row and each col with no repeats - try to do this randomly

#GAME PLAN: create a matrix filled with 0s, and 6 row stacks and 6 col stacks. 
#, go through each element in matrix 1 by 1, assign random number, pop that number from the row stack and col stack


#STEP 1: initiate 6x6 matrix, 6 row stacks, and 6 col stacks
@matrix_a = Array.new(6){[0]*6} #=>[[0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0]]
row_stack_0 = (0..5).to_a
row_stack_1 = (0..5).to_a
row_stack_2 = (0..5).to_a
row_stack_3 = (0..5).to_a
row_stack_4 = (0..5).to_a
row_stack_5 = (0..5).to_a
@rows = []
@rows << row_stack_0 << row_stack_1 << row_stack_2 << row_stack_3 << row_stack_4 << row_stack_5

col_stack_0 = (0..5).to_a
col_stack_1 = (0..5).to_a
col_stack_2 = (0..5).to_a
col_stack_3 = (0..5).to_a
col_stack_4 = (0..5).to_a
col_stack_5 = (0..5).to_a
@cols = []
@cols << col_stack_0 << col_stack_1 << col_stack_2 << col_stack_3 << col_stack_4 << col_stack_5

#SAMPLE METHOD: choose a random number from a given range

# # p row_stack_0.sample
# p row_stack_0
# p b = row_stack_0.delete(row_stack_0.sample()) 
# p row_stack_0 #=> 4, [0, 1, 2, 3, 5]

# DELETE METHOD: delete the randomly chosen number from stack
# p c =  row_stack_0.delete(row_stack_0.sample()) 
# p row_stack_0
# p d =  row_stack_0.delete(row_stack_0.sample()) 
# p row_stack_0
# p e =  row_stack_0.delete(row_stack_0.sample()) 
# p row_stack_0
# p f =  row_stack_0.delete(row_stack_0.sample()) 
# p row_stack_0
# p g =  row_stack_0.delete(row_stack_0.sample()) 
# p row_stack_0
# (0..5).each do |x|
# 	p cols[x]
# end


def populate1(matrix)
	(0..5).each do |x|
		(0..5).each do |y|
			matrix[x][y] = (@cols[y] & @rows[x]).sample
			@cols[y].delete(matrix[x][y])
			@rows[x].delete(matrix[x][y])
		end
	end

# 	p z = matrix.flatten
# 	if z.include?(nil)!=true
# 		return matrix
# 	else
# 		p "has nil(s)"
# 	end
end



p populate1(@matrix_a)
# WORD FILE(NOTES)
# https://docs.google.com/document/d/1RKan2s17F2ZrsgEmzmBplq0-V-mT9LI4DJEssihvWFg/edit
# EXCEL FILE(NOTES)
# https://docs.google.com/spreadsheets/d/1YRPTyGtxgLTLoOkVH59jb2pdh8ilziMC683FB2hc3Lc/edit#gid=0