require "net/http"
Net::HTTP.version_1_2	# �V�X HTTP ����
Net::HTTP.start("www.example.com", 80){|http|
  response = http.post("/cgi-bin/echo.cgi", "msg=test", {"Content-Type" => "application/x-www-form-urlencoded"})
}
