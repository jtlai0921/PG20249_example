array = [1, 2, 3, 4, 5, 2, 2, 3]

count = Hash.new(0)
array.each{|elem|
  count[elem] += 1
}

p count
