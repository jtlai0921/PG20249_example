require "cgi"
cgi = CGI.new
print cgi.header("Location"=>"/cgi-bin/test2.cgi")
