# 客戶端
require "drb"
DRb.start_service
obj = DRbObject.new_with_uri("druby://localhost:8787")
obj.each{|i|
  p i
}
