require "digest/md5"

md5 = Digest::MD5.new
while s = $stdin.read(1024)
  md5.update(s)
end
puts md5.hexdigest
