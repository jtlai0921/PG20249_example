# 陣列
array=[1, 2, 3]
array.each{|elem|
  p elem
}
	#=> 1
	#=> 2
	#=> 3

# 雜湊
hash = {"Perl"=>1, "Python"=>2, "Ruby"=>3}
hash.each{|key, value|
  p [value, key]
}
	#=> [3, Ruby]
	#=> [1, Perl]
	#=> [2, Python]
