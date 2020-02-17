# Ruby 1.6版
array1 = %w(a a b b c d e)
array2 = %w(c d e)
p (array1-array2)	#=> ["a", "b"]

# Ruby 1.8版
array1 = %w(a a b b c d e)
array2 = %w(c d e)
p (array1-array2)	#=> ["a", "a", "b", "b"]
