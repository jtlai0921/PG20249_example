# 透過CGI物件來輸出
require "cgi"
cgi = CGI.new
header = {"type" => "text/html",
	  "charset" => "big5",
	  "X-My-Header" => "foo"}
print cgi.header(header)
print "<html><title>test</title>"
print "<body><p>test.</p></body></html>\r\n"
