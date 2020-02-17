# Tab -> �b�Ϊťզr��
def untabify(str, tabstop = 8)
  str.gsub(/(.*?)\t/n){ $1 + " " * (tabstop - ($1.length % tabstop)) }
end

# �b�Ϊťզr�� -> Tab
def tabify(str, tabstop = 8)
  str.gsub(/^[ \t]+/){|sp|
    t, s = untabify(sp, tabstop).length.divmod(tabstop)
    "\t" * t + " " * s
  }
end
