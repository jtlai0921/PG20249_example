require "cgi"

cgi = CGI.new
file = cgi.params["file"][0]
print cgi.header("type" => "text/html", "charset" => "utf8")
puts "<html>"
puts "<head><title>�W���ɮת��d��</title></head>"
puts "<body>"
puts "<h1>�W�Ǫ��ɮ�</h1>"
puts "<pre>"
print CGI.escapeHTML(file.read)
puts "</pre>"
puts "</body></html>"
