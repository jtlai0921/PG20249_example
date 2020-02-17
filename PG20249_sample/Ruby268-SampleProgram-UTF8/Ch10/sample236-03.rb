require "cgi"
enc_str = "x&lt;0 &amp; y&gt;1"
str = CGI.unescapeHTML(env_str)
p str  #=> "x<0 & y>1"
