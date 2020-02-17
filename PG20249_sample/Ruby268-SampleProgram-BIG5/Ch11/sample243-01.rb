p "str".kind_of?(String)		#=> true
p "str".kind_of?(Object)		#=> true
p "str".kind_of?(Integer)		#=> false
p [1, 2].kind_of?(Array)		#=> true
p [1, 2].kind_of?(Enumerable)	#=> true
p [1, 2].kind_of?(Integer)		#=> false
