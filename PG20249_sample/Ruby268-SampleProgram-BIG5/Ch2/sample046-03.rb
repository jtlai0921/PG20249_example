text.collect{|line| line.strip }		# ��U��i��strip�ö��X�_��
text.select{|line| /\AD/ =~ line }	# �u���X�HD���_�l����
