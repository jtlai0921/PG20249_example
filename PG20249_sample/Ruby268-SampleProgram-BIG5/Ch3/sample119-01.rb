h = Hash.new{|h, key| h[key] = [] }
h["a"] << 1
h["b"] << 2
h["a"] << 3
# �o��N�ȧ@���}�C�����G
p h["a"]		#=> [1, 3]
p h["b"]		#=> [2]