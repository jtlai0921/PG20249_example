def three_times(&block)
  real_three_times(&block)
end

def real_three_times
  yield 1
  yield 2
  yield 3
end

three_times{|i|
  p i
}

  #=> 1
  #=> 2
  #=> 3
