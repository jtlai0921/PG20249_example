require "open3"
stdin, stdout, stderr = Open3.popen3("cvs update install.rb")
stdin.close	# 因為在cvs update中沒有輸入的必要所以馬上關閉
print stdout.read
print stderr.read
stdout.close	# 結束處理
stderr.close	# 結束處理
