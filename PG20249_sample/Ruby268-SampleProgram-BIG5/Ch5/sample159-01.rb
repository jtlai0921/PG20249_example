STDERR.sync = true
File.open("foo.txt"){|file|
  file.seek(0, IO::SEEK_END)		# 移動到檔案尾端
  while true
    file.seek(0, IO::SEEK_CUR)	# 期待副作用並seek
    if data = file.read
      print data
    end
    sleep(0.5)
  end
}
