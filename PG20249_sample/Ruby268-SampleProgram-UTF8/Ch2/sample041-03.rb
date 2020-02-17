class String
  def mbsubstr1(*range)	# 分割各別文字
    split(//)[*range].join("")
  end

  def mbsubstr2(idx, len)	# 以正規表現來處理
    slice(/\A.{#{idx}}(.{0,#{len}})/m, 1)
  end
end

p "這有好多人".mbsubstr1(2, 2)	#=> "好多"
p "這有好多人".mbsubstr1(2..3)	#=> "好多"
p "這有好多人".mbsubstr2(2, 2)	#=> "好多"
