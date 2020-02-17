text.collect{|line| line.strip }		# 對各行進行strip並集合起來
text.select{|line| /\AD/ =~ line }	# 只集合以D為起始的行
