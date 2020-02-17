hash = {"a"=>"Ruby", "b"=>"Ruby", "c"=>"Perl", "d"=>"Python"}
# �z�L��ӱƧ�
puts "sorted by key:"
p hash.sort_by{|key, value| key }
  #=> [["a", "Ruby"], ["b", "Ruby"], ["c", "Perl"], ["d", "Python"]]

# �z�L�ȨӱƧ�
puts "sorted by value:"
p hash.sort_by{|key, value| value }
  #=> [["c", "Perl"], ["d", "Python"], ["b", "Ruby"], ["a", "Ruby"]]

# �z�L�ȡA�䪺���ǨӱƧ�
puts "sorted by value->key:"
p hash.sort_by{|key, value| [value, key] }
  #=> [["c", "Perl"], ["d", "Python"], ["a", "Ruby"], ["b", "Ruby"]]
