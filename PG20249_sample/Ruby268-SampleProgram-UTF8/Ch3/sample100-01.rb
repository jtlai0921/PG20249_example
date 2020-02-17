array = ["zero", "one", "two", "three", "four"]
array.each_with_index{|item, idx|
  puts "#{idx}: #{item.inspect}"
}
