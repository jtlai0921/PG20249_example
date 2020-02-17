p "string".class.ancestors
	#=> [String, Enumerable, Comparable, Object, Kernel]
p [1, 2].class.ancestors	#=> [Array, Enumrable, Object, Kernel]
p nil.class.ancestors	#=> [NilClass, Object, Kernel]
