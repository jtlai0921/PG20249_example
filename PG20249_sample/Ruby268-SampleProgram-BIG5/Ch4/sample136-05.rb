open("dst.txt", "wb"){|dst|		# �}�ҥت��a�ɮ�
  open("src.txt", "rb"){|src|		# �}�_���ɮ�
    while data = src.read(1024*1024)
      dst.write(data)
    end
  }
}
