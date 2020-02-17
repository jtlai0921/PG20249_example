def split_nchars(str, n)
  str.scan(/.{1,#{n}}/m)
end

p split_nchars("���Ѫ��ѪūD�`��", 4)	#=> ["���Ѫ���", "�ūD�`��"]
p split_nchars("���Ѫ��Ѫ�", 4)		#=> ["���Ѫ���", "��"]
p split_nchars("���Ѫ�", 4)		#=> ["���Ѫ�"]
