list = [1, 2, 3, 4, 5]
sum = list.inject(0){|result, i| result + i}
p sum	#=> 15
