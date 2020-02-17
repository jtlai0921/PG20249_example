hash = {"a" => 1, "b" => 6}
hash2 = {"a" => 2, "b" =>4}
# 值較大者優先
hash.merge!(hash2){|key, val1, val2| val1 > val2 ? val1 : val2}
p hash	#=> {"a"=>2, "b"=>6}
