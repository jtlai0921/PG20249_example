h = Hash.new
(h["a"] ||= []) << 1
(h["b"] ||= []) << 2
(h["a"] ||= []) << 3
# 得到將值作為陣列的結果
p h["a"]		#=> [1, 3]
p h["b"]		#=> [2]
