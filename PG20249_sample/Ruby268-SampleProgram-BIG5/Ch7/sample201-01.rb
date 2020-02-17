require "date"

def days_of_month(year, month)
  Date.new(year, month, -1).day
end

p days_of_month(2007, 2)	#=> 28
p days_of_month(2008, 1)	#=> 31
p days_of_month(2008, 2)	#=> 29
p days_of_month(2008, 3)	#=> 31
