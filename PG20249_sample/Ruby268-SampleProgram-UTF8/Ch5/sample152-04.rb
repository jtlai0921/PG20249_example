data1 = data2 = data3 = nil
File.open("foo.dat"){|file|
  file.binmode
  data1 = file.read(16)
  data2 = file.read(16)
  data3 = file.read(16)
}
