p "aaa".chomp		#=> "aaa"
p "aaa\n".chomp		#=> "aaa"
p "aaa\r\n".chomp	#=> "aaa"  # �p�G�ORuby 1.6�����ܷ|�O"aaa\r"
p "aaa\r".chomp		#=> "aaa"  # �p�G�ORuby 1.6�����ܷ|�O"aaa\r"
