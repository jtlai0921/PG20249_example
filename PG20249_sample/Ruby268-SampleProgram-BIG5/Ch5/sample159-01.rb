STDERR.sync = true
File.open("foo.txt"){|file|
  file.seek(0, IO::SEEK_END)		# ���ʨ��ɮק���
  while true
    file.seek(0, IO::SEEK_CUR)	# ���ݰƧ@�Ψ�seek
    if data = file.read
      print data
    end
    sleep(0.5)
  end
}
