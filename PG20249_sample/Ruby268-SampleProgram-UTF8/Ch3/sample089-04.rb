nums = ["zero", "one", "two", "three", "four"]

# 取出由索引1的元素開始到索引3的元素
p nums[1..3]	#=> ["one", "two", "three"]

# 取出由索引1的元素開始到索引2（3-1）的元素
p nums[1...3]	#=> ["one", "two"]
