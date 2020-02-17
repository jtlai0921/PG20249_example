require "strscan"

s = StringScanner.new("def foo(n) n * 3 end")
until s.eos?
  if str = s.scan(/\w+/)
    p [:WORD, str]
  elsif str = s.scan(/\s+/)
    # 捨去空白類字元
  else # 除此外每一個字元
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
