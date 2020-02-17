def unident_auto(str)
  unindent(str, minimum_indent(str))
end

# 傳回包含於str中最淺的縮排。但空行會被忽略。
def minimum_indent(str)
  indents = str.map{|line|
    untabify(line.rstrip).slice(/\A */).length
  }
  (indents - [0]).min || 0
end

str = unindent_auto(<<EOS)
  * foo
      * bus
    * bar
EOS
