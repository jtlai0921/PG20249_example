File.open("foo.txt"){|file|
  nil while file.gets
  p file.lineno
}
