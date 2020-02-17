def matching_length(str, re)
  result = 0
  str.scan(re){|chunk|
    result += chunk.split(//).length
  }
  result
end

# 有多少個空白類字元在字串中呢？
p matching_length("abc d eee ff\n", /\s/)	#=> 4
p matching_length("", /\s/)			#=> 0
p matching_length("            \n", /\s/)	#=> 13

# 有多少個「哈」在字串中呢？
p matching_length("哇哈哈哈哈哈哈哈哈哈～～", /哈+/)	#=> 9
