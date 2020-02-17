# 將檔案的存取時間與更新時間，設定為當前時間
atime = mtime = Time.now
File.utime(atime, mtime, "foo.txt")
File.utime(atime, mtime, "foo.txt", "bar.txt")
