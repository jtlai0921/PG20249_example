data = File.open("foo.dat"){|file|
  file.binmode
  file.read
}
