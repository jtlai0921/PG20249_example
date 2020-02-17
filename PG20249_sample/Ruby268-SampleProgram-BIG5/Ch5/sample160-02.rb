require "tempfile"
temp = Tempfile.new("my-temp")
temp.puts "test test test"
temp.close		# 關閉IO

	# ... 一些處理

temp.open
p temp.read		#=> "test test test\n"
temp.close(true)		# 關閉IO並刪除暫存檔案
