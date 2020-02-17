require "date"
require "date/holiday"

today = Date.today
d = Date.nth_kday(3, 1, today.year, today.month)
puts d.to_s	#=> 2007-01-15
