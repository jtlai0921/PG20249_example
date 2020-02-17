def counts
  if block_given?	# 有區塊的話
    yield 1
    yield 2
    yield 3
  else		# 無區塊的話
    [1, 2, 3]
  end
end
