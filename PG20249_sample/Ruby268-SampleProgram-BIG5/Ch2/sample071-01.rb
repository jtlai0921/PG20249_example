p Regexp.quote("*.txt")		#=> "\\*\\.txt"
p Regexp.quote("what?")		#=> "what\\?"
p Regexp.quote("[a-z]")		#=> "\\[a\\-z\\]"
p Regexp.quote("{a,b}")		#=> "\\{a,b\\}"

p /#{Regexp.quote("..")}/ =~ ".."	#=> 0
p /#{Regexp.quote("..")}/ =~ "xx"	#=> nil
