File.open("out.txt", "w"){|file|
  file.binmode
  file.write "Hello, world\n"
}
