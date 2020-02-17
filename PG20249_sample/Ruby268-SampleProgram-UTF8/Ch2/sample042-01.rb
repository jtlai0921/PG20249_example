# 取出以「a」開頭的三個字元
p "xxxabcfffpat".slice(/a../)		#=> "abc"

# 正規表現無法匹配的情況會傳回nil
p "xxx".slice(/a../)	#=> nil
