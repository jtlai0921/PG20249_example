# 相當地慢......以筆者的電腦來執行要約30秒
buf = ""
50000.times{
  buf += "xxx|"
}

# 非常快速......以筆者的電腦來執行約0.05秒
buf = ""
50000.times{
  buf.concat "xxx|"
}
