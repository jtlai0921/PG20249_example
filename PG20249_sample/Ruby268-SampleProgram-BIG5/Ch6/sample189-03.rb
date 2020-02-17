data = File.read("/dev/urandom", 40)
			# 讀取40 Bytes(320 bit)的資料
data.unpack("I10")	# 將讀入之資料轉換為10個整數
