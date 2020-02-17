# 切出最大5 bytes的字串
require "nkf"
p NKF.nkf("-f5 -w -m0", "學程式設計").slice(/\A.*/)	#=> "學"（UTF-8）
