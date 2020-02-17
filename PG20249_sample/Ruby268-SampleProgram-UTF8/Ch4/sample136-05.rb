open("dst.txt", "wb"){|dst|		# 開啟目的地檔案
  open("src.txt", "rb"){|src|		# 開起原檔案
    while data = src.read(1024*1024)
      dst.write(data)
    end
  }
}
