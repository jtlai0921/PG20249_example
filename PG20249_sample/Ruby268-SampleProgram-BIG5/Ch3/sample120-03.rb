def safe_invert(orig_hash)
  result = Hash.new{|h, key| h[key] = [] }
  orig_hash.each{|key, value|
    result[value] << key
  }
  result
end

p safe_invert({"a" => 1, "b" => 1, "c" => 3})
	#=> {1=>["a", "b"], 3=>["c"]}
