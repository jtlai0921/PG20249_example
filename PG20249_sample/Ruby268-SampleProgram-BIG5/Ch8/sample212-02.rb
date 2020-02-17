require "etc"
p Etc.getpwnam("test")
  #=> #<struct Struct::Passwd name="test", passwd="x", uid=10010, gid=100, gecos="Test User", dir="/home/test", shell="/bin/sh">
p Etc.getpwuid(10010)
  #=> #<struct Struct::Passwd name="test", passwd="x", uid=10010, gid=100, gecos="Test User", dir="/home/test", shell="/bin/sh">
