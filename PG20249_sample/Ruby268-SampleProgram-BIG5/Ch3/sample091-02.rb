# 由索引0開始刪除兩個元素
list = ["a", "b", "c"]
list.slice!(0, 2)
p list	#=> ["c"]
