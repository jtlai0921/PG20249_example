# �ǰt�Ҧ��`���Ÿ�
str = "�t\n aad�u�ve\ne �w0\n0a�|\n ii��\n"
str.scan(/[�t-��]+/){|s|
  puts s
}

  #=> �t
  #=> �u�v
  #=> �w
  #=> �|
  #=> ��
