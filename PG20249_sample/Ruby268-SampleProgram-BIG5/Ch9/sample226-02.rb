require "webrick"

class FooServer < WEBrick::GenericServer
  def run(sock)
    # ...�B�zsocket
  end
end

server = FooServer.new(:Port => 8000)
trap(:INT){ server.shutdown }	# �Hctrl-C�Ӱ�����A��
server.start
