def leap?(year)
  ((year % 4 == 0) && (year %100 != 0)) || (year % 400 == 0)
end

p leap?(2000)	#=> true
p leap?(2001)	#=> false
p leap?(2008)	#=> true
p leap?(2100)	#=> false
