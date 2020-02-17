File.open("foo.txt"){|file|
  file.each{|line|
    puts line
  }
}
