p "This is\na pen.\n".to_a	#=> ["This is\n", "a pen.\n"]
p ({1=>2, "x"=>"str"}.to_a)	#=> [["x", "str"], [1, 2]]
p nil.to_a			#=> []
