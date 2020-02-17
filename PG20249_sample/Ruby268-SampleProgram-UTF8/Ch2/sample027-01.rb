p(/\Aa/ =~ "aiueo")		#=> 0
p(/\Ao/ =~ "aiueo")		#=> nil
p(/\Aㄅ/ =~ "ㄅㄆㄇㄈㄉ")	#=> 0

p(/o\z/ =~ "aiueo")		#=> 4
p(/a\z/ =~ "aiueo")		#=> nil
p(/ㄉ\z/ =~ "ㄅㄆㄇㄈㄉ")	#=> 12

