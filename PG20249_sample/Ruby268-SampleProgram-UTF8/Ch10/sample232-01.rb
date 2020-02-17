require "cgi"

cgi = CGI.new
cookies = cgi.cookies
cookies.each{|key, value|
  p key, value
}
