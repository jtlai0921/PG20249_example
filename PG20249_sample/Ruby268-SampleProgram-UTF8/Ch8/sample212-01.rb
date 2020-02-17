require "etc"
def get_login_name
  pw = Etc.getpwuid(Process.uid) or return nil
  pw.name
end
