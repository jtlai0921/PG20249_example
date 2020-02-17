# 伺服器端
require "drb"
obj = ["drb", "server"]	# 公開此物件
DRb.start_service("druby://localhost:8787", obj)
DRb.thread.join	# 一定要等待執行緒結束！
