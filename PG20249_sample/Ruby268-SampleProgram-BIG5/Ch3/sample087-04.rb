as = [1, 2, 3, 4, 5, 6, 7]	# ��ڤW��j
bs = %w(a b c d e f g)
as.each_index{|idx|
  a = as[idx]
  b = bs[idx]
  puts "(#{a} . #{b})"
}
