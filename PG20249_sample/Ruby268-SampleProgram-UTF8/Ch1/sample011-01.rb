def map_with_index(list)
  result = []
  list.each_with_index{|item, idx|
    value = yield [item, idx]
    result << value
  }
  return result
end
map_with_index([1, 2, 3]){|item, idx| item*idx }	#=> [0, 2, 6]
