a = ["abc", "def", "ghi"]
b = Marshal.load(Marshal.dump(a))
a[0].upcase!
p a	#=> ["ABC", "def", "ghi"]
p b	#=> ["abc", "def", "ghi"]
