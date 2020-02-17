require "etc"
pw = Etc.getpwnam("gotoyuzo")
File.chown(pwd.uid, pwd.gid, "foo.txt", "bar.txt")
