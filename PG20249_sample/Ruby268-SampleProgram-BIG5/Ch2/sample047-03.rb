# ( ) 與(?: )的不同
p 'abc aBC abc'.scan(/a(bc|BC)/)	#=> [["bc"], ["BC"], ["bc"]]
p 'abc aBC abc'.scan(/a(?:bc|BC)/)	#=> ["abc", "aBC", "abc"]
