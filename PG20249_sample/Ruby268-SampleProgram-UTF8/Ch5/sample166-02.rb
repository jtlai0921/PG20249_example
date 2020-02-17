File.open(path, "a"){|file|
  file.truncate(10)
}
p file.size(path)		#=> 10
