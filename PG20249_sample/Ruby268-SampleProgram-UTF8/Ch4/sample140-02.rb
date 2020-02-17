stat = File.stat("/usr/local/bin/ruby")
p stat.file?		#=> true
p stat.directory?		#=> false
p stat.readable?		#=> true
p stat.writable?		#=> false
p stat.executable?		#=> true
