str = "xxx��xxx"
str.sub!(/��/){|s| s + "�Ӥ��" }
p str	#=> "xxx�պӤ��xxx"
