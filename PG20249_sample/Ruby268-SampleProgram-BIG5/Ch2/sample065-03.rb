def take_nbytes2(str, n)
  str[0, n].slice(/\A.{0,}/m)
end

p take_nbytes2("�ǵ{���]�p", 4)	#=> "��"�]UTF-8�^
p take_nbytes2("�ǵ{���]�p", 5)	#=> "��"�]UTF-8�^
p take_nbytes2("�ǵ{���]�p", 6)	#=> "�ǵ{"�]UTF-8�^
