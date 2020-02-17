require "net/http"
Net::HTTP.version_1_2	# 混合 HTTP 版本
httpclass = Net::HTTP.Proxy("proxy.example.com", 3128)
httpclass.start("www.example.com", 80) {|http|
  response = http.get("/")
  print response.body
}
