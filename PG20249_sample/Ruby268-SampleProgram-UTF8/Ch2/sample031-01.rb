str = "abc def ghi jkl"
p str.slice(/\w+/)	#=> "abc"
str = $'
p str		#=> " def ghi jkl"
p str.slice(/\w+/)	#=> "def"
