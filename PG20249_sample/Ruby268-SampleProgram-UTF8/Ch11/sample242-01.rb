a = [[1, 1], [2, 2], [3, 3]]
b = a.dup
a[0].push 9	# 直接改變a的元素的話...
p a	#=> [[1, 1, 9], [2, 2], [3, 3]]
# b的元素也會被影響
p b	#=> [[1, 1, 9], [2, 2], [3, 3]]