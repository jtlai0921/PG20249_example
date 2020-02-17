# 假設輸入為EUC-JP
require "nkf"
def take_ncols(str, n)
  NKF.nkf("-Se -x -m0", take_nbytes2(NKF.nkf("-Es -x -m0", str), n))
end
