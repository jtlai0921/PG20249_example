File.open("data.txt"){|f|
  p f.map{|line| line.chomp}
}
