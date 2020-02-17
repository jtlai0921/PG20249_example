require "cgi"
str = "§Ö¼Ö&Ruby&µæÃĞ"
p CGI.unescape(CGI.escape(str))
  #=> "\345\277\253\346\250\202&Ruby&\350\217\234\350\255\234"
