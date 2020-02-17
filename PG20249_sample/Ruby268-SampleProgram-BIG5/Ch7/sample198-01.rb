require "time"

p Time.parse("Tue Apr 10 04:54:42 CST 2007")
#=> Tue Apr 10 18:54:42 +0800 2007

p Time.parse("Tue, 10 Apr 2007 04:54:42 +0800")
#=> Tue Apr 10 04:54:42 +0800 2007

p Time.parse("Sun, 10 Apr 2007 04:54:42 CST")
#=> Tue Apr 10 18:54:42 +0800 2007

p Time.parse("Sun, 09 Apr 2007 19:54:42 GMT")
#=> Tue Apr 10 03:54:42 +0800 2007

p Time.parse("2007-04-10T04:54:42+08:00")
#=> Tue Apr 10 04:54:42 +0800 2007

p Time.parse("2007/04/10 04:54:42")
#=> Tue Apr 10 04:54:42 +0800 2007

p Time.parse("2007/04/10")	#=> Tue Apr 10 00:00:00 +0800 2007
p Time.parse("20070410045442")	#=> Tue Apr 10 04:54:42 +0800 2007
p Time.parse("04:54:42")		#=> Tue Apr 10 04:54:42 +0800 2007
p Time.parse("04/10")		#=> Tue Apr 10 00:00:00 +0800 2007

p Time.parse("H19.04.10")		#=> Tue Apr 10 00:00:00 +0800 2007
p Time.parse("S60.04.10")		#=> Web Apr 10 00:00:00 +0800 1985
