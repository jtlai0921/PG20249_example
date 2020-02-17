require "cgi"
str = "快樂&Ruby&菜譜"
p CGI.unescape(CGI.escape(str))
  #=> "\345\277\253\346\250\202&Ruby&\350\217\234\350\255\234"
