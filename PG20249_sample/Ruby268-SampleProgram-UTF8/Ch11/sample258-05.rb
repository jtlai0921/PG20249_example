p "string".respond_to?(:object_id)	#=> true
p "string".respond_to?(:inject)	#=> true
p String.method_defined?(:object_id)	#=> true
p String.method_defined?(:inject)	#=> true
