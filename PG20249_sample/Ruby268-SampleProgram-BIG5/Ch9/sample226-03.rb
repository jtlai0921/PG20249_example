# 等待IPv4與IPv6中可以使用的埠號8888
require "socket"

port = 8888
servers = Socket.getaddrinfo(nil, port, nil, Socket::SOCK_STREAM, nil, Socket::AI_PASSIVE).map{|res|
  af, port, host, ip, afnum, socktype, proto = *res
  TCPServer.new(ip, port)
}
while true
  r, w, ex = *IO.select(servers)
  r.each{|server|
    Thread.fork(server.accept){|sock|
      begin
        ...處理socket
      ensure
        sock.close unless sock.closed?
      end
    }
  }
end
