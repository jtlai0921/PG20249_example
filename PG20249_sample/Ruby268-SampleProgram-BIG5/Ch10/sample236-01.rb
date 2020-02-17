require "cgi"
str = "x<0 & y>1"
enc_str = CGI.escapeHTML(str)
p enc_str	  #=> "x&lt;0 &amp; y&gt;1"
