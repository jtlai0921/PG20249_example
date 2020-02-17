str = "xxx博xxx"
str.sub!(/博/){|s| s + "碩文化" }
p str	#=> "xxx博碩文化xxx"
