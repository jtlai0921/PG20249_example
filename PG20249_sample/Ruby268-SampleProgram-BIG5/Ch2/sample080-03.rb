require "uri"

html_string = <<-HTML
<html>
<head><title>Index</title></head>
<body>
<h1>Ruby相關</h1>
<ul>
<li><a href="http://www.ruby-lang.org/ja/">Ruby官方網站</a></li>
<li><a href="ftp://ftp.ruby-lang.org/pub/">Ruby FTP</a></li>
<li><a href="http://www.rubyist.net">Rubyist.net</a></li>
<li><a href="http://www.rubycentral.com">Ruby Central</a></li>
<li><a href="http://www.rubygarden.com">Ruby Garden</a></li>
</ul>
</body>
</html>
HTML

p URI.extract(html_string, %w(ftp))
  #=> ["ftp://ftp.ruby-lang.org/pub/"]
