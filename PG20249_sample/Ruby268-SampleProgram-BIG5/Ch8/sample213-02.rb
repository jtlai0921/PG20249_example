require "etc"

def switch_uid(user)
  uid = Etc.getpwnam(user).uid
  Process::UID.change_privilege(uid)
end

switch_uid("test")
	# ... ���B������檺�B�z���O�H�ϥΪ�"test"���v���Ӱ���
