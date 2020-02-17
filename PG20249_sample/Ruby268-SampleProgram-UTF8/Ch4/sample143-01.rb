require "fileutils"
p FileUtils.cmp("/bin/ls", "/bin/ls")	#=> true
