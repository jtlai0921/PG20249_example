data = File.read("/dev/urandom", 40)
			# Ū��40 Bytes(320 bit)�����
data.unpack("I10")	# �NŪ�J������ഫ��10�Ӿ��
