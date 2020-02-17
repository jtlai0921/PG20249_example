stat = File.stat("/usr/local/bin/ruby")
puts stat.ctime		#=> Mon Jan 08 04:13:39 +0800 2007
puts stat.atime		#=> Wed Jan 10 06:54:15 +0800 2007
puts stat.mtime		#=> Mon Jan 08 04:10:41 +0800 2007
puts stat.size		#=> 1323292
puts "0%o" % stat.mode	#=> 0100755
