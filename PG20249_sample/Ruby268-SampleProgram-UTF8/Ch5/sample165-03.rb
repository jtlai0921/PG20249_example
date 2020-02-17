DATA_LENGTH = 16

filename = "data.dat"
File.open(filename, File::RDWR|File::CREAT){|file|
  file.binmode
  rec_head = file.read(DATA_LENGTH)	# 讀取檔頭的資料
  file.seek(-DATA_LENGTH, IO::SEEK_END)
			# 將讀取位置移到檔尾的開頭
  rec_tail = file.read(DATA_LENGTH)		# 讀取檔尾的資料
  file.seek(0, IO::SEEK_SET)			# 移動到檔案開頭
  file.write(rec_tail)				# 在檔頭寫入資料
  file.seek(-DATA_LENGTH, IO::SEEK_END)
			# 將寫入位置移至檔尾的開頭
  file.write(rec_head)			# 在檔尾寫入資料
}
