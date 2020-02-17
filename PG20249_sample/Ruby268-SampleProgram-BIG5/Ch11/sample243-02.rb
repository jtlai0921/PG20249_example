p "str".instance_of?(String)		#=> true
p "str".instance_of?(Object)		#=> false
p "str".instance_of?(Integer)		#=> false
p [1, 2].instance_of?(Array)		#=> true
p [1, 2].instance_of?(Enumerable)	#=> false
