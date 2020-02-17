# 排他鎖定的例子
File.open("foo.txt", "a"){|file|
  file.flock(File::LOCK_EX)
  # 對file進行寫入
}

# 共有鎖定的例子
File.open("foo.txt"){|file|
  file.flock(File::LOCK_SH)
  # 由file讀入資料
}
