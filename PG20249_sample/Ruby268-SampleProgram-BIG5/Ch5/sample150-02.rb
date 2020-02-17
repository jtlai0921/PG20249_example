file = File.open("foo.txt")
file.each{|line|
  puts line
}
file.close
