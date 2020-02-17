class String
  def mbsubstr1(*range)	# ���ΦU�O��r
    split(//)[*range].join("")
  end

  def mbsubstr2(idx, len)	# �H���W��{�ӳB�z
    slice(/\A.{#{idx}}(.{0,#{len}})/m, 1)
  end
end

p "�o���n�h�H".mbsubstr1(2, 2)	#=> "�n�h"
p "�o���n�h�H".mbsubstr1(2..3)	#=> "�n�h"
p "�o���n�h�H".mbsubstr2(2, 2)	#=> "�n�h"
