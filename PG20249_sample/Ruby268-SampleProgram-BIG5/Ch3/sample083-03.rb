# 分隔特定字元的話使用split方法
book = "book title:author:publisher".split(/:/)
p book	#=> ["book title", "author", "publisher"]
