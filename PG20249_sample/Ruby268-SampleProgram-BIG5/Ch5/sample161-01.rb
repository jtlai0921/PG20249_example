# �ƥL��w���Ҥl
File.open("foo.txt", "a"){|file|
  file.flock(File::LOCK_EX)
  # ��file�i��g�J
}

# �@����w���Ҥl
File.open("foo.txt"){|file|
  file.flock(File::LOCK_SH)
  # ��fileŪ�J���
}
