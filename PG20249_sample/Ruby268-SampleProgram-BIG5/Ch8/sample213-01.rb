require "etc"

def switch_euid(user)
  old_uid = Process.euid
  Process.euid = Etc.getpwnam(user).uid
  yield
ensure
  Process.euid = old_uid
  raise
end

switch_euid("test"){
  # 以test使用者的權限來執行
}
