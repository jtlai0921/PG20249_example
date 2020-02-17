require "cgi"
str = "快樂&Ruby&菜譜"
uri = "http://www.example.com/q.cgi?name=" + CGI.escape(str)
p uri
  #=> "http://www.example.com/q.cgi?name=%E5%BF%AB%E6%A8%82%26Ruby%26%E8%8F%9C%E8%AD%9C"
