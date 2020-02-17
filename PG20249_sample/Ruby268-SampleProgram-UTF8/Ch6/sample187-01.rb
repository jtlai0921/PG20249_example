num = 1001.2
p num.round	#=> 1001
p num.truncate	#=> 1001
p num.ceil	#=> 1002
p num.floor	#=> 1001

num = -1001.2
p num.round	#=> -1001
p num.truncate	#=> -1001
p num.ceil	#=> -1001
p num.floor	#=> -1002

num = 1001.5
p num.round	#=> 1002
p num.truncate	#=> 1001
p num.ceil	#=> 1002
p num.floor	#=> 1001

num = -1001.5
p num.round	#=> -1002
p num.truncate	#=> -1001
p num.ceil	#=> -1001
p num.floor	#=> -1002
