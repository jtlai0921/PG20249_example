def split_nchars(str, n)
  str.scan(/.{1,#{n}}/m)
end

p split_nchars("今天的天空非常藍", 4)	#=> ["今天的天", "空非常藍"]
p split_nchars("今天的天空", 4)		#=> ["今天的天", "空"]
p split_nchars("今天的", 4)		#=> ["今天的"]
