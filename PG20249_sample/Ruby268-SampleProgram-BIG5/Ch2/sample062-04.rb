chars = "�ǵ{���]�p".split(//)
chars[3, 0] = ["inserted"]
p chars.join("")	#=> "�ǵ{��inserted�]�p"
