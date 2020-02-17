require "webrick"

class FooServer < WEBrick::GenericServer
  def run(sock)
    # ...處理socket
  end
end

server = FooServer.new(:Port => 8000)
trap(:INT){ server.shutdown }	# 以ctrl-C來停止伺服器
server.start
