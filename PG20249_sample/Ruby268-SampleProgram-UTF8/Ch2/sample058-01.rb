# 對字串str的各行以n個半形空白字元來進行縮排（不對應Tab）
def indent0(str, n)
  str.gsub(/^/, " " * n)
end

# 對應Tab的版本
def indent(str, n, tabstop = 8)
  str.map{|line|
    if tabstop
    then tabify((" " * n) + untabify(line, tabstop))
    else (" " * n) + line
    end
  }.join("")
end
