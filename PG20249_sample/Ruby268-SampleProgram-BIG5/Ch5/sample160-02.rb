require "tempfile"
temp = Tempfile.new("my-temp")
temp.puts "test test test"
temp.close		# ����IO

	# ... �@�ǳB�z

temp.open
p temp.read		#=> "test test test\n"
temp.close(true)		# ����IO�çR���Ȧs�ɮ�
