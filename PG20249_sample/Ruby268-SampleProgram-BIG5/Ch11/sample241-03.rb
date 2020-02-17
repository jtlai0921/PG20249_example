p "string".object_id	#=> 537750810
p "string".object_id	#=> 537750790
str = "string"
p str.object_id		#=> 537750770
p str.object_id		#=> 537750770

p [1, 2, 3].object_id	#=> 537750740
p [1, 2, 3].object_id	#=> 537750720
ary = [1, 2, 3]
p ary.object_id		#=> 537750700
p ary.object_id		#=> 537750700

p 3.object_id		#=> 7
p 3.object_id		#=> 7
int = 3
p int.object_id		#=> 7
p int.object_id		#=> 7
