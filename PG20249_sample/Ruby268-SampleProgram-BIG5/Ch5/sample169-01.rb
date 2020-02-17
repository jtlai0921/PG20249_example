File.open("log.txt", "a"){|file|
  STDOUT.reopen(file)
}

# 下面對標準輸出的寫入會輸出至log.txt
puts "!!! STDOUT is redirected. !!!"
system("ls")
