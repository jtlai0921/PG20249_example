# 文字編碼為UTF-8
p "aiueo".unpack("C*")	#=> [97, 105, 117, 101, 111]
p "博碩".unpack("C*")	#=> [229, 141, 154, 231, 162, 169]