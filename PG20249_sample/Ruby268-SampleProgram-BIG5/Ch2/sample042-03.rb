# ���X��k�W������
p "   def print(str)".slice(/^\s*def\s+([^\s\(]+)/, 1)
  #=> "print"

# ���W��{�L�k�ǰt���ܷ|�Ǧ^nil
p "xxx".slice(/^\s*def\s+([^\s\(]+)/, 1)	#=> nil
