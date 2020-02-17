deamon{
  server = TCPServer.new(port)
  while true
    Thread.fork(server.accept){|sock|
      begin
      	# ... ³B²zSocket
      ensure
        sock.close unless sock.closed?
      end
    }
  end
}
