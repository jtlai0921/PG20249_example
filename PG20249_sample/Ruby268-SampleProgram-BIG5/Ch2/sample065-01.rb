def take_nbytes1(str, n)
  buf = ""
  str.split(//).each do |ch|
    break if buf.size + ch.size > n
    buf << ch
  end
  buf
end

p take_nbytes1("�ǵ{���]�p", 4)	#=> "�ǵ{"
p take_nbytes1("�ǵ{���]�p", 5)	#=> "�ǵ{"
p take_nbytes1("�ǵ{���]�p", 6)	#=> "�ǵ{��"
