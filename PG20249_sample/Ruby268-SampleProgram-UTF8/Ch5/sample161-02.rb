File.open("foo.txt"){|file|
  until file.flock(File::LOCK_SH | File::LOCK_NB)
    sleep 1
  end
  # ... 編輯檔案
}
