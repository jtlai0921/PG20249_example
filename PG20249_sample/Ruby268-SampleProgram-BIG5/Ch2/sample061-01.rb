str = "�x�W�x�W�x�W"
str.sub!(/�x�W/, "")
p str	#=> "�x�W�x�W"

str = "�x�W�x�W�x�W"
str.gsub!(/�x�W/, "")
p str	#=> ""
