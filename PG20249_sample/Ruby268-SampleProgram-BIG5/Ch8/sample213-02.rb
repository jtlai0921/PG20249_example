require "etc"

def switch_uid(user)
  uid = Etc.getpwnam(user).uid
  Process::UID.change_privilege(uid)
end

switch_uid("test")
	# ... 此處之後執行的處理都是以使用者"test"的權限來執行
