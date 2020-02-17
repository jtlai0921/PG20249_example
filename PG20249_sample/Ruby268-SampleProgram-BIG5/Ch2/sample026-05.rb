# 匹配所有注音符號
str = "ㄅ\n aadㄆㄇe\ne ㄈ0\n0aㄍ\n iiㄚ\n"
str.scan(/[ㄅ-ㄜ]+/){|s|
  puts s
}

  #=> ㄅ
  #=> ㄆㄇ
  #=> ㄈ
  #=> ㄍ
  #=> ㄚ
