PACK_TEMPLATE = "N2A8"
DATA_LENGTH = 16

filename = "data.dat"
buf = []
File.open(filename, File::RDWR|File::CREAT){|file|
  file.binmode				# �ഫ���G�i��Ҧ�
  while rec = file.read(DATA_LENGTH)
    if rec.length != DATA_LENGTH		# �p�G�������פ��A���ܷ|�o�Ϳ��~
      raise "invalid length"
    end
    buf << rec.unpack(PACK_TEMPLATE)
  end
}
