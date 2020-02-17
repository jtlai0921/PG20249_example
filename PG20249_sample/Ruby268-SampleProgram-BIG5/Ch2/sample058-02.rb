# ��r��str���U��Hn�ӥb�Ϊťզr���Ӱ��h�Y�ơ]������Tab�^
def unindent0(str, n)
  str.gsub(/^ {0,#{n}}/, "")
end

# ����Tab������
def unindent(str, n, tabstop = 8)
  indent_re = /^ {0,#{n}}/
  str.map{|line|
    if tabstop
    then tabify(untabify(line, tabstop).sub(indent_re, ""), tabstop)
    else line.sub(indent_re, "")
    end
  }.join("")
end
