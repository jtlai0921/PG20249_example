require "matrix"

# 建立舉陣物件
mat0 = Matrix[[2,0,0],[0,2,0],[0,0,2]]
mat1 = Matrix[[1,2,3],[4,5,6],[7,8,9]]
mat2 = Matrix[[4,5,6],[7,8,9],[1,2,3]]

# 陣列運算
p mat0 + mat1	#=> Matrix[[3, 2, 3], [4, 7, 6], [7, 8, 11]]
p mat0 - mat1	#=> Matrix[[1, -2, -3], [-4, -3, -6], [-7, -8, -7]]
p mat1 * mat2	#=> Matrix[[21, 27, 33], [57, 72, 87], [93, 117, 141]]
