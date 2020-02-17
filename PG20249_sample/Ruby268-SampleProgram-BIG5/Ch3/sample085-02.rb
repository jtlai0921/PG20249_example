def make_nm_array(n, m)
  (0..n).map { Array.new(m) }
end

array = make_nm_array(2, 3)
p array		#=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
p array[1][2]	#=> nil
