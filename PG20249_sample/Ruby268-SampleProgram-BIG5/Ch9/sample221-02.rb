deamon{
  server = TCPServer.new(port)
  while true
    Thread.fork(server.accept){|sock|
      begin
      	# ... �B�zSocket
      ensure
        sock.close unless sock.closed?
      end
    }
  end
}
