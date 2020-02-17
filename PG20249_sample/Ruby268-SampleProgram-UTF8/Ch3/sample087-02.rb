as = [1, 2 ,3]
bs = ["a", "b", "c"]
p as.zip(bs).each{|a, b|
  puts "(#{a} . #{b})"
}
	#=> (1 . a)
	#=> (2 . b)
	#=> (3 . c)
