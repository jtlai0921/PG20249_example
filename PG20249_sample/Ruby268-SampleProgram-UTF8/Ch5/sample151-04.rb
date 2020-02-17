File.open("foo.txt"){|file|
  file.each("。"){|sentence|		# 一行行取出
    puts sentence.delete("\n")	# 刪除換行字元
  }
}
