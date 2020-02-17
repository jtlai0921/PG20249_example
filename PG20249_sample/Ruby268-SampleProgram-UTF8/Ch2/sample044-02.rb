def unmatching_length(str, re)
  str.split(//).length - matching_length(str, re)
end

# 除了空白類字元以外，有多少字元在字串中呢？
p unmatching_length("abc d eee ff\n", /\s/)	#=> 9
p unmatching_length("", /\s/)		#=> 0
p unmatching_length("            \n", /\s/)	#=> 0
