def counts
  if block_given?	# ���϶�����
    yield 1
    yield 2
    yield 3
  else		# �L�϶�����
    [1, 2, 3]
  end
end
