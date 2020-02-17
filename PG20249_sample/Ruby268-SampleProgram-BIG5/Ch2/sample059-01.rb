def unident_auto(str)
  unindent(str, minimum_indent(str))
end

# �Ǧ^�]�t��str���̲L���Y�ơC���Ŧ�|�Q�����C
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
