require "net/http"
Net::HTTP.version_1_2	# �V�X HTTP ����
httpclass = Net::HTTP.Proxy("proxy.example.com", 3128)
httpclass.start("www.example.com", 80) {|http|
  response = http.get("/")
  print response.body
}
