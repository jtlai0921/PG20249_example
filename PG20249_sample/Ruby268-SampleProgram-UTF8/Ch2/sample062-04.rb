chars = "學程式設計".split(//)
chars[3, 0] = ["inserted"]
p chars.join("")	#=> "學程式inserted設計"
