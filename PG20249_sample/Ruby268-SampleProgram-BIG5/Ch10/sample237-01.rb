require "cgi"
$SAFE = 1

cgi = CGI.new
print cgi.header("type" => "text/plain")
path = cgi.params["data"][0]
print File.open(path){|f| f.read }
  # SecurityError: Insecure operation - open
