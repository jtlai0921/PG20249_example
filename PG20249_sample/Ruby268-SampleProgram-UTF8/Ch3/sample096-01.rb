array = [1, 2, 3, 4, 5]
array.each_index{|i|
  j = rand(i+1)
  array[i], array[j] = array[j], array[i]
}
p array	#=> [2, 4, 3, 1, 5]
