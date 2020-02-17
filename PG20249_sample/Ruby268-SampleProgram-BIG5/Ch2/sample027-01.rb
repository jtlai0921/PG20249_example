p(/\Aa/ =~ "aiueo")		#=> 0
p(/\Ao/ =~ "aiueo")		#=> nil
p(/\A£t/ =~ "£t£u£v£w£x")	#=> 0

p(/o\z/ =~ "aiueo")		#=> 4
p(/a\z/ =~ "aiueo")		#=> nil
p(/£x\z/ =~ "£t£u£v£w£x")	#=> 12

