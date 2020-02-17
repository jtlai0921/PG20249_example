m = /abc/.match("xxxabcabcabcxxx")
p m.begin(0)	#=> 3
p m.end(0)	#=> 6
p m[0]		#=> "abc"
p m.post_match	#=> "abcabcxxx"

m = "xxxabcabcabcxxx".match(/abc/)
p m.begin(0)	#=> 3
p m.end(0)	#=> 6
p m[0]		#=> "abc"
p m.post_match	#=> "abcabcxxx"
