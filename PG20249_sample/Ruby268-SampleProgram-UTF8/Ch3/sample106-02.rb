array1 = %w(a b b c c d e d)
array2 = %w(c c d e d)
p (array1 & array2)	#=> ["c", "d", "e"]
