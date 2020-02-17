a = ["abc", "def", "ghi"]
b = a.dup	# 複製陣列a
a[0].upcase!	# 直接改變陣列a中的元素
p a	#=> ["ABC", "def", "ghi"]
p b	#=> ["ABC", "def", "ghi"]	# 陣列b中的元素也會改變
