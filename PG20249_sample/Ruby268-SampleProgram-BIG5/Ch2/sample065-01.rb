def take_nbytes1(str, n)
  buf = ""
  str.split(//).each do |ch|
    break if buf.size + ch.size > n
    buf << ch
  end
  buf
end

p take_nbytes1("學程式設計", 4)	#=> "學程"
p take_nbytes1("學程式設計", 5)	#=> "學程"
p take_nbytes1("學程式設計", 6)	#=> "學程式"
