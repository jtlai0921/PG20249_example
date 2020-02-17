h1 = {"a"=>1, "b"=>2}
h2 = {"a"=>1, "c"=>3}
keys = h1.keys & h2.keys
p keys	#=> ["a"]
