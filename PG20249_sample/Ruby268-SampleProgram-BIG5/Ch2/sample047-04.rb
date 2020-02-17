require "strscan"

s = StringScanner.new("def foo(n) n * 3 end")
until s.eos?
  if str = s.scan(/\w+/)
    p [:WORD, str]
  elsif str = s.scan(/\s+/)
    # �˥h�ť����r��
  else # �����~�C�@�Ӧr��
    p [:CHAR, s.getch]
  end
end

  #=> [:WORD, "def"]
  #=> [:WORD, "foo"]
  #=> [:CHAR, "("]
  #=> [:WORD, "n"]
  #=> [:CHAR, ")"]
  #=> [:WORD, "n"]
  #=> [:CHAR, "*"]
  #=> [:WORD, "3"]
  #=> [:WORD, "end"]
