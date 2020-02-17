# 由檔案開頭算起1024 byte的位置開始，讀入100 bytes的資料
data = File.read("foo.dat", 100, 1024)
