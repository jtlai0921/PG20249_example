# �u�B�z�]�t���u�֡v�Ρu�֡v����
str = "��\n aad�n�Ye\ne ��0\n0a��\n ii�n\n"
str.grep(/[�ּ�]/){|line|
  p line
}

  #=> "��\n"
  #=> "e ��0\n"
