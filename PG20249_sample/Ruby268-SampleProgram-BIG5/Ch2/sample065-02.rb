# ���X�̤j5 bytes���r��
require "nkf"
p NKF.nkf("-f5 -w -m0", "�ǵ{���]�p").slice(/\A.*/)	#=> "��"�]UTF-8�^
