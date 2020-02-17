hash = {"a"=>"Ruby", "b"=>"Ruby", "c"=>"Perl", "d"=>"Python"}
# 透過鍵來排序
puts "sorted by key:"
p hash.sort_by{|key, value| key }
  #=> [["a", "Ruby"], ["b", "Ruby"], ["c", "Perl"], ["d", "Python"]]

# 透過值來排序
puts "sorted by value:"
p hash.sort_by{|key, value| value }
  #=> [["c", "Perl"], ["d", "Python"], ["b", "Ruby"], ["a", "Ruby"]]

# 透過值，鍵的順序來排序
puts "sorted by value->key:"
p hash.sort_by{|key, value| [value, key] }
  #=> [["c", "Perl"], ["d", "Python"], ["a", "Ruby"], ["b", "Ruby"]]
