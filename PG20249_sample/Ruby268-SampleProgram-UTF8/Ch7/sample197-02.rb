require "time"
t =Time.now
p t.rfc822	#=> "Fri, 31 Aug 2007 23:04:33 +0800"
p t.httpdate	#=> "Fri, 31 Aug 2007 15:04:33 GMT"
p t.iso8601	#=> "2007-08-31T23:04:33+08:00"
p t.xmlschema	#=> "2007-08-31T23:04:33+08:00"
