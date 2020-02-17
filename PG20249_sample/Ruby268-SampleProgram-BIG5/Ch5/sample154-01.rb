File.open("foo.txt", "w"){|file|	# 建立新檔案
  file.puts "第一行"
}
File.open("foo.txt", "a"){|file|	# 在檔案結尾加入一行
  file.puts "第二行"
}
