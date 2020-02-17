require "time"
p Time.parse("70-01-02")	#=> Fri Jan 02 00:00:00 +0800 1970
p Time.parse("01-01-10")	#=> Web Jan 10 00:00:00 +0800 2001
p Time.parse("38-01-09")	#=> Sat Jan 09 00:00:00 +0800 2038
