p /(?=.*?程).*?設/ =~ "學程式設計"	#=> 0
p /(?=.*?程).*?設/ =~ "設程設程"		#=> 0
p /(?=.*?程).*?設/ =~ "IA-64"		#=> nil
