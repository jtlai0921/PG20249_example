def dump_lines(enumerable)
  enumerable.each{|line|
    puts line.chomp.dump
  }
end

File.open("foo.txt"){|io|
  dump_lines(io)
}
