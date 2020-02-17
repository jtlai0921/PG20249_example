require "open3"
Open3.popen3("cvs update install.rb"){|stdin, stdout, stderr|
  stdin.close	# 在cvs update中沒有輸入的必要，所以馬上關閉
  print stdout.read
  print stderr.read
}
