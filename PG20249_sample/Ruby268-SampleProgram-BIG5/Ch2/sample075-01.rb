require "nkf"

str = "���U�ӳo�q��r�|������A�ڭ̥i�H�z�L�禡�w����k�ӱN�o�q��r�H�C���Q�Ӧ줸�ըӤ����@�ӭӪ��q���C�̪񪺤Ѯ�Ϥ����Цa�ܤơA�L�ѧN�A�V�Ѽ��C�ڭ̬O���O���ӭn�n�n�Ҽ{���ҫO�@�����D�O�I"
puts NKF.nkf("-w -f60 -m0", str)
