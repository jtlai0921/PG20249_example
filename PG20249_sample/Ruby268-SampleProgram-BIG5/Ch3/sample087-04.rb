as = [1, 2, 3, 4, 5, 6, 7]	# 實際上更大
bs = %w(a b c d e f g)
as.each_index{|idx|
  a = as[idx]
  b = bs[idx]
  puts "(#{a} . #{b})"
}
