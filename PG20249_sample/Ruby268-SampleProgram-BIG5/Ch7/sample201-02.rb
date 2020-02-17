require "date"

def days_of_month(year, month)
  last_day = (Date.new(year, month, 1) >> 1) -1
  last_day.day
end

p days_of_month(2008, 1)	#=> 31
