p(/^$/ =~ "a\n")		#=> nil
p(/^$/ =~ "\n")		#=> 0
p(/^$/ =~ "a")		#=> nil
p(/^$/ =~ "")		#=> 0
p(/^$/ =~ "\t\n")		#=> nil
p(/^$/ =~ "aaa\n\nbbb")	#=> 4
