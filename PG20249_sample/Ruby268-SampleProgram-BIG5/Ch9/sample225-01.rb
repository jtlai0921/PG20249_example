# ���ohttp://localhost/�����
require "socket"
TCPSocket.open("localhost", 80){|f|
  f.print "GET / HTTP/1.0\r\n\r\n"
  print f.read
}
