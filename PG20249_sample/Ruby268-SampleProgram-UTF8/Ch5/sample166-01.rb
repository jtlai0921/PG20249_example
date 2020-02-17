path = "foo.dat"
File.open(path, "w"){|file|
  file.print "a" * 100
}
p File.size(path)		#=> 100
File.truncate(path, 20)
p File.size(path)		#=> 20
