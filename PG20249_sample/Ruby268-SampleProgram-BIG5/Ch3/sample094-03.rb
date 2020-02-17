# 置換由索引1起的兩個元素
array = ["perl", "python", "ruby"]
array.fill(nil, 1, 2)
p array	#=> ["perl", nil, nil]
