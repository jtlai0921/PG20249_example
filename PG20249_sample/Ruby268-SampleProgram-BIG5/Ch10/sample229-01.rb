require "cgi"

cgi = CGI.new

# ��J��<input type="text" name="item1">��INPUT������
# �ѿ�J�����������X�@�ӭ�
str = cgi.params["item1"[0]]	# �@�q�g�k
str = cgi["item1"[0]]	# Ruby 1.6�g�k
str = cgi["item1"]		# Ruby 1.8�g�k

# �ѿ�J��<input type="checkbox" name="checkbox1" value="1">��INPUT������
# ���X�h�ӭ�
checkes = cgi.params["checkbox1"]	# �@�q�g�k
checkes = cgi["checkbox1"]		# �@�q�g�k
