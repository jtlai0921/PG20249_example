# ����IPv4�PIPv6���i�H�ϥΪ���8888
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
        ...�B�zsocket
      ensure
        sock.close unless sock.closed?
      end
    }
  }
end
