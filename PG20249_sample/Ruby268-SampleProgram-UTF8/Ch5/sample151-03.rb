require "sample151-02.rb"

ary = [
  "element 1 of array",
  "element 2 of array"
]

str = <<_end_of_text_
line 1 of string
line 2 of string
_end_of_text_

dump_lines(ary)	# 將陣列中的元素一個個列出
dump_lines(str)	# 將字串一行行地列出
