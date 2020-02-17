# 只將接有[a-zA-Z0-9]的部份視為單字
p "def foo(n) n * 3 end".scan(/\w+/n)
  #=> ["def", "foo", "n", "n", "3", "end"]

# 將/\w+/或/[^\s\w]+/視為單字
p "def foo(n) n * 3 end".scan(/\w+|[^\s\w]+/)
  #=> ["def", "foo", "(", "n", ")", "n", "*", "3", "end"]
