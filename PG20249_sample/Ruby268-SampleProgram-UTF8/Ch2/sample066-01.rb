def take_nchars(str, n)
  str.slice(/\A.{0,#{n}}/m)
end

p take_nchars("abcdefgh", 5)		#=> "abcde"
p take_nchars("今天天氣非常好", 5)	#=> "今天天氣非"
p take_nchars("abc", 5)			#=> "abc"
p take_nchars("ab\n\ncde", 5)		#=> "ab\n\nc"
p take_nchars("", 5)			#=> ""
