File.readlines("foo.txt").each{|line|
  line.chomp!	# 除去換行字元
    # ... 對各行的處理。
}
