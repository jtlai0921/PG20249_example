# �u�N����[a-zA-Z0-9]������������r
p "def foo(n) n * 3 end".scan(/\w+/n)
  #=> ["def", "foo", "n", "n", "3", "end"]

# �N/\w+/��/[^\s\w]+/������r
p "def foo(n) n * 3 end".scan(/\w+|[^\s\w]+/)
  #=> ["def", "foo", "(", "n", ")", "n", "*", "3", "end"]
