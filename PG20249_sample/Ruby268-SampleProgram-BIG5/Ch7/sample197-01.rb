t = Time.now
p t.to_s				#=> "Fri Aug 31 22:57:24 +0800 2007"
p t.strftime("%a %b %d %X %Z %Y")	#=> "Fri Aug 31 22:57:24 CST 2007"
p t.strftime("%Y/%m/%d%-%X")	#=> "2007/08/31-22:57:24"
p t.strftime("%Y%m%d%H%M%S")	#=> "20070831225724"
