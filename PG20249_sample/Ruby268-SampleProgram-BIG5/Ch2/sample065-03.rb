def take_nbytes2(str, n)
  str[0, n].slice(/\A.{0,}/m)
end

p take_nbytes2("學程式設計", 4)	#=> "學"（UTF-8）
p take_nbytes2("學程式設計", 5)	#=> "學"（UTF-8）
p take_nbytes2("學程式設計", 6)	#=> "學程"（UTF-8）
