File.open("foo.txt", "w").close	# �إ�foo.txt
p File.lstat("foo.txt").nlink		#=> 1
File.link("foo.txt", "bar.txt")		# �إ߳s����bar.txt
p File.lstat("foo.txt").nlink		#=> 2
