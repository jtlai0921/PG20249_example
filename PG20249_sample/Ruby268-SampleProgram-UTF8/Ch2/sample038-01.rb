p "1".to_i	#=> 1
p "1.2".to_i	#=> 1
p "a".to_i	#=> 0
p Integer("1")	#=> 1
p Integer("1.2")	#=> ArgumentError: invalid value for Integer: "1.2"
p Integer("a")	#=> ArgumentError: invalid value for Integer: "a"
