# 假設輸入為UTF-8
require "iconv"
def take_ncols2(str, n)
  Iconv.conv("UTF-8", "big5", take_nbytes2(Iconv.conv("big5", "UTF-8", str), n))
end
