File.open("foo.txt"){|file|
  file.each("�C"){|sentence|		# �@�����X
    puts sentence.delete("\n")	# �R������r��
  }
}
