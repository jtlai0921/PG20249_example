require "cgi"

cgi = CGI.new

# 輸入到<input type="text" name="item1">的INPUT元素中
# 由輸入的元素中取出一個值
str = cgi.params["item1"[0]]	# 共通寫法
str = cgi["item1"[0]]	# Ruby 1.6寫法
str = cgi["item1"]		# Ruby 1.8寫法

# 由輸入至<input type="checkbox" name="checkbox1" value="1">的INPUT元素中
# 取出多個值
checkes = cgi.params["checkbox1"]	# 共通寫法
checkes = cgi["checkbox1"]		# 共通寫法
