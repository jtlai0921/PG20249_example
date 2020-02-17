fact = lambda{|n|
  if n == 1
  then 1
  else n * fact.call(n-1)
  end
}

p fact.call(1)	#=> 1
p fact.call(2)	#=> 2
p fact.call(3)	#=> 6
p fact[4]		#=> 24
p fact[5]		#=> 120
