# 啟動df -k，並取得標準輸出
open("| df -k", "r"){|f|
  puts f.gets
  puts f.gets
}
