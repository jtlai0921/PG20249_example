hash = {"a" => 1, "b" => 6}
hash2 = {"a" => 2, "b" =>4}
# �ȸ��j���u��
hash.merge!(hash2){|key, val1, val2| val1 > val2 ? val1 : val2}
p hash	#=> {"a"=>2, "b"=>6}
