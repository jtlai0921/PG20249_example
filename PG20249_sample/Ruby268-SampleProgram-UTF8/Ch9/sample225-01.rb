# 取得http://localhost/的文件
require "socket"
TCPSocket.open("localhost", 80){|f|
  f.print "GET / HTTP/1.0\r\n\r\n"
  print f.read
}
