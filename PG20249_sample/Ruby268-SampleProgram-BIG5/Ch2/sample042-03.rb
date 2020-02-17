# 取出方法名的部份
p "   def print(str)".slice(/^\s*def\s+([^\s\(]+)/, 1)
  #=> "print"

# 正規表現無法匹配的話會傳回nil
p "xxx".slice(/^\s*def\s+([^\s\(]+)/, 1)	#=> nil
