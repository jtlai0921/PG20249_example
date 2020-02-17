require "cgi"
def escapeHTML(str)
  CGI.escapeHTML(str).gsub(/'/n, "&#39;")
end

str = '"It\'s me!", he said.'
enc_str = escapeHTML(str)
p enc_str  #=> "&quot;It&#39;s me!&quot;, he said."
