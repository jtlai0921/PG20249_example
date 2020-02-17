# 第二參數中寫入Big5碼
require "nkf"
p NKF.nkf("-w -m0", "\e$B8HAI>k304(;3;{\e(B\r\n")
  #=> 姑蘇城外寒山寺
