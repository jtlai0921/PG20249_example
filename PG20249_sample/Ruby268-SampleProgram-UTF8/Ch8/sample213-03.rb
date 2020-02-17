require "etc"

def switch_user(user)
  fork{
    pw = Etc.getpwnam(user)
    Process.initgroups(user, pw.gid)
    Process.GID.change_privilege(pw.gid)
    Process.UID.change_privilege(pw.uid)
    yield
  }
end

switch_user("test"{
	# ... 以test的權限來設定所有的狀態來執行
}
