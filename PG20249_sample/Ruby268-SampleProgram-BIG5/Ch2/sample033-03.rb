str = "3.14159265357919"
char_stat(str).each{|char, count|
  puts "#{char.inspect}: #{count * 100 / str.length}%"
}
