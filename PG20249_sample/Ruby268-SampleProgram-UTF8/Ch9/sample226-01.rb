require "socket"

port = 8080
server = TCPServer.new("0.0.0.0", port)
loop{
  Thread.fork(server.accept){|sock|
    begin
      # ... 處理socket
    ensure
      sock.close unless sock.closed?
    end
  }
}
