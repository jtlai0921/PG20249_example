# 正規表現與字串是透過BIG-5來輸入的（$KCODE="NONE"）
p(/梣/ =~ "博碩")	#=> 0
p(/梣/n =~ "博碩")	#=> nil