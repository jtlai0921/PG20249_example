# �N�ɮת��s���ɶ��P��s�ɶ��A�]�w����e�ɶ�
atime = mtime = Time.now
File.utime(atime, mtime, "foo.txt")
File.utime(atime, mtime, "foo.txt", "bar.txt")
