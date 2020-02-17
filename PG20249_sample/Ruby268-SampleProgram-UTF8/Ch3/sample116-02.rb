h = {"a" => 10, "b" => 15, "c" => 100}
h2 = h.reject{|key, value|
  value % 10 == 0
}
p h2	#=> {"b"=>15}
p h	#=> {"a" => 10, "b" => 15, "c" => 100}
h3 = h.reject!{|key, value|
  value % 10 == 0
}
p h3	#=> {"b"=>15}
p h	#=> {"b"=>15}
