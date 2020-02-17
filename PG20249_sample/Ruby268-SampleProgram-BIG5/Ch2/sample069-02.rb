require "digest/md5"
p Digest::MD5.hexdigest("abcdefghijklmn" * 1024)
  #=> "80fb5e0d7dd99e4891f7036c53818e37"
