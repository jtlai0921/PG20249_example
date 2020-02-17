t0 = Time.now		# 測量前的實際時間
tms0 = Process.times	# 測量前的CPU時間
100000.times{ File.read("/etc/hosts") }	# 讀取檔案10萬次
t1 = Time.now		# 測量後的實際時間
tms1 = Process.times	# 測量後的CPU時間

p [t1 - t0, tms1.utime - tms0.utime, tms1.stime - tms0.stime]
  #=> [1.987855, 0.96, 0.99]
