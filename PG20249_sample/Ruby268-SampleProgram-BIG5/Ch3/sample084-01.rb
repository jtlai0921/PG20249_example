a = ["abc", "def", "ghi"]
b = a.dup	# �ƻs�}�Ca
a[0].upcase!	# �������ܰ}�Ca��������
p a	#=> ["ABC", "def", "ghi"]
p b	#=> ["ABC", "def", "ghi"]	# �}�Cb���������]�|����
