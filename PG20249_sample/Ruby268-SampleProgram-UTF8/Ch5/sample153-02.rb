flags = File::CREAT | File::TRUNC | File::WRONLY
mode = 0600
File.open("foo.txt", flags, mode){|file|
  file.write("data0")
  file.write("data1")
}
