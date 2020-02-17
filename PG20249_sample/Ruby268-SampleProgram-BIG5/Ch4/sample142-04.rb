File.open("foo.txt", "w").close	# 建立foo.txt
p File.lstat("foo.txt").nlink		#=> 1
File.link("foo.txt", "bar.txt")		# 建立連結為bar.txt
p File.lstat("foo.txt").nlink		#=> 2
