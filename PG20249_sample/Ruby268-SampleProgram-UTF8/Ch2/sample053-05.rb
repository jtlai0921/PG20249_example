str = "a b\tc\r\n"
p str.dump	#=> "\"a b\\tc\\r\\n\""
p eval(str.dump)	#=> "a b\tc\r\n"
