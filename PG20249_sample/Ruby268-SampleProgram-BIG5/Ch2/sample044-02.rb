def unmatching_length(str, re)
  str.split(//).length - matching_length(str, re)
end

# ���F�ť����r���H�~�A���h�֦r���b�r�ꤤ�O�H
p unmatching_length("abc d eee ff\n", /\s/)	#=> 9
p unmatching_length("", /\s/)		#=> 0
p unmatching_length("            \n", /\s/)	#=> 0
