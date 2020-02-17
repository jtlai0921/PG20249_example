# 找尋所有的偶數
array = [1, 2, 3, 4, 5]
vals = array.select{|elem| elem % 2 == 0 }
p vals	#=> [2, 4]
