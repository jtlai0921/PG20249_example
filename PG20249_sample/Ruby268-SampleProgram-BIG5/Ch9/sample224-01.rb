require "socket"

# 取得IP位置（正查）
def lookup_ipaddr(host, family = Socket::AF_UNSPEC)
  Socket.getaddrinfo(host, nil, family)[0][3]
end
# 由IP位置來取得機器名稱（反查）
def reverse_lookup(ip)
  Socket.getnameinfo([Socket::AF_UNSPEC, nil, ip])[0]
end

p lookup_ipaddr("host1")			#=> "192.168.1.4"
p lookup_ipaddr("192.168.1.4")		#=> "192.168.1.4"
p lookup_ipaddr("localhost", Socket::AF_INET)	#=> "127.0.0.1"
p lookup_ipaddr("localhost", Socket::AF_INET6)	#=> "::1"
p reverse_lookup("192.168.1.4")		#=> "host1"
p reverse_lookup("127.0.0.1")		#=> "localhost"
p reverse_lookup("::1")			#=> "localhost"
