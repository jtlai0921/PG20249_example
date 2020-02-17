require "digest/md5"

p Digest::MD5.digest("abcdefghijklmn" * 1024)
  #=> "\200\373^\r}\331\236H\221\367\003lS\201\2167"
p Digest::MD5.digest("abcdefghijklmn" * 1024 + "x")
  #=> "\243\000\213\233\t\341:5\354\022\364eh\264\r\v"
