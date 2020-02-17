deamon{
  server = TCPServer.new(port)
  while true
    Thread.fork(server.accept){|sock|
      begin
      	# ... 處理Socket
      ensure
        sock.close unless sock.closed?
      end
    }
  end
}
