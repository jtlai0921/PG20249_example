# 找尋第一個出現的偶數
array = [1, 2, 3, 4, 5]
val = array.find{|elem| elem % 2 == 0 }
p val	#=> 2
