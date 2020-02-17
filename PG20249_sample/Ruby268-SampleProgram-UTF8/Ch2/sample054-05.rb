p "aaa".chomp		#=> "aaa"
p "aaa\n".chomp		#=> "aaa"
p "aaa\r\n".chomp	#=> "aaa"  # 如果是Ruby 1.6版的話會是"aaa\r"
p "aaa\r".chomp		#=> "aaa"  # 如果是Ruby 1.6版的話會是"aaa\r"
