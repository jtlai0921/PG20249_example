DATA_LENGTH = 16

filename = "data.dat"
File.open(filename, File::RDWR|File::CREAT){|file|
  file.binmode
  rec_head = file.read(DATA_LENGTH)	# Ū�����Y�����
  file.seek(-DATA_LENGTH, IO::SEEK_END)
			# �NŪ����m�����ɧ����}�Y
  rec_tail = file.read(DATA_LENGTH)		# Ū���ɧ������
  file.seek(0, IO::SEEK_SET)			# ���ʨ��ɮ׶}�Y
  file.write(rec_tail)				# �b���Y�g�J���
  file.seek(-DATA_LENGTH, IO::SEEK_END)
			# �N�g�J��m�����ɧ����}�Y
  file.write(rec_head)			# �b�ɧ��g�J���
}
