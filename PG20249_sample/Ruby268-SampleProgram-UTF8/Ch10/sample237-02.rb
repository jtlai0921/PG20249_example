require "cgi"
$SAFE = 1

cgi = CGI.new
print cgi.header("type" => "text/plain")
path = cgi.params["data"][0]
if /\A(foo|bar|hoge)\.txt\z/ =~ path
  path.untaint
  print File.open(path){|f| f.read }	# 現在就沒問題了
end
