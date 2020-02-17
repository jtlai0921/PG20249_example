require "cgi"

cgi = CGI.new
file = cgi.params["file"][0]
print cgi.header("type" => "text/html", "charset" => "utf8")
puts "<html>"
puts "<head><title>上傳檔案的範例</title></head>"
puts "<body>"
puts "<h1>上傳的檔案</h1>"
puts "<pre>"
print CGI.escapeHTML(file.read)
puts "</pre>"
puts "</body></html>"
