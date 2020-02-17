h1 = {"a"=>1, "b"=>2}
h2 = {"a"=>1, "c"=>3}
uniq_keys = (h1.keys | h2.keys) - (h1.keys & h2.keys)
p uniq_keys	#=> ["b", "c"]
