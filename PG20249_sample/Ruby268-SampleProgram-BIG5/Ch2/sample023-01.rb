str = "This is a string"
p str.dup		#=> "This is a string"
p str.clone	#=> "This is a string"

p str.object_id	#=> 538155386
p str.dup.object_id	#=> 538155366
