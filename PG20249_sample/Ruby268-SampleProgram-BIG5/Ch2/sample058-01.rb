# ��r��str���U��Hn�ӥb�Ϊťզr���Ӷi���Y�ơ]������Tab�^
def indent0(str, n)
  str.gsub(/^/, " " * n)
end

# ����Tab������
def indent(str, n, tabstop = 8)
  str.map{|line|
    if tabstop
    then tabify((" " * n) + untabify(line, tabstop))
    else (" " * n) + line
    end
  }.join("")
end
