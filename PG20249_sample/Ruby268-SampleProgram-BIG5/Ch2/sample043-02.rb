m = /博碩/.match("這裡是博碩文化出版社")
p m.post_match	#=> "文化出版社"

/博碩/ =~ "這裡是博碩文化出版社"
p $'	#=> "文化出版社"
