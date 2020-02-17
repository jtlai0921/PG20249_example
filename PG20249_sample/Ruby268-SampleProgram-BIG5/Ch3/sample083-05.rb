buf = Array.new
File.open("data.txt"){|f|
  f.each{|line|
    buf << line.chomp
  }
}

p buf	#=> This is a sample of reading data.
	#=> And add the strings into a array.
	#=> ["This is a sample of reading data.", "And add the strings into a array."]
