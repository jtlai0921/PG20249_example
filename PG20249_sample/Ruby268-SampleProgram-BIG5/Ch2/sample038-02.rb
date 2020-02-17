p "1".to_f	#=> 1.0
p "1.2".to_f	#=> 1.2
p "a".to_f	#=> 0.0
p Float("1")	#=> 1.0
p Float("1.2")	#=> 1.2
p Float("a")	#=> ArgumentError: invalid value for Float: "a"
