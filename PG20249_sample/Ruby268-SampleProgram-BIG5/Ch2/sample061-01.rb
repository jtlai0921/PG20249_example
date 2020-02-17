str = "台灣台灣台灣"
str.sub!(/台灣/, "")
p str	#=> "台灣台灣"

str = "台灣台灣台灣"
str.gsub!(/台灣/, "")
p str	#=> ""
