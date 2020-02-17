require "etc"
p Etc.getgrnam("test")
  #=> #<struct Strcut::Group name="test", passwd="x", gid=103, mem=[]>
p Etc.getgruid(103)
  #=> #<struct Struct::Group name="test", passwd="x", gid=103, mem=[]>
