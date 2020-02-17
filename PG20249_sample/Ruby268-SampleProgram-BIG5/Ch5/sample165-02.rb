PACK_TEMPLATE = "N2A8"
DATA_LENGTH = 16

filename = "data.dat"
buf = []
File.open(filename, File::RDWR|File::CREAT){|file|
  file.binmode				# 轉換為二進位模式
  while rec = file.read(DATA_LENGTH)
    if rec.length != DATA_LENGTH		# 如果紀錄長度不適當的話會發生錯誤
      raise "invalid length"
    end
    buf << rec.unpack(PACK_TEMPLATE)
  end
}
