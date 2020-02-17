re1 = "aaa"
re2 = /bbb/
/#{re1}|#{re2.source}/	# 與/aaa|bbb/相同
