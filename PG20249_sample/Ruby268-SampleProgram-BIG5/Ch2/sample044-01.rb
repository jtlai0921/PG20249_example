def matching_length(str, re)
  result = 0
  str.scan(re){|chunk|
    result += chunk.split(//).length
  }
  result
end

# ���h�֭Ӫť����r���b�r�ꤤ�O�H
p matching_length("abc d eee ff\n", /\s/)	#=> 4
p matching_length("", /\s/)			#=> 0
p matching_length("            \n", /\s/)	#=> 13

# ���h�֭ӡu���v�b�r�ꤤ�O�H
p matching_length("�z���������������������", /��+/)	#=> 9
