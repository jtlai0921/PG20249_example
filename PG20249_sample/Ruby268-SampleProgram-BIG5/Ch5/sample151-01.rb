File.open("foo.txt"){|file|
  while line = file.gets
    p line
  end
}
