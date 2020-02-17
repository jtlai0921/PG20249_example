array1 = ["Ruby", "Perl", "Python"]
array2 = array1
array3 = ["Ruby", "Perl", "Python"]
p array1 == array2	#=> true
p array1 == array3	#=> true
p array1.equal?(array2)	#=> true
p array1.equal?(array3)	#=> false
