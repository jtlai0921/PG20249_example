# 對字串str的各行以n個半形空白字元來除去縮排（不對應Tab）
def unindent0(str, n)
  str.gsub(/^ {0,#{n}}/, "")
end

# 對應Tab的版本
def unindent(str, n, tabstop = 8)
  indent_re = /^ {0,#{n}}/
  str.map{|line|
    if tabstop
    then tabify(untabify(line, tabstop).sub(indent_re, ""), tabstop)
    else line.sub(indent_re, "")
    end
  }.join("")
end
