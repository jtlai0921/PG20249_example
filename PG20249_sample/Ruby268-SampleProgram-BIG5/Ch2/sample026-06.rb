# 只處理包含有「快」或「樂」的行
str = "快\n aad好吃e\ne 樂0\n0a哈\n ii好\n"
str.grep(/[快樂]/){|line|
  p line
}

  #=> "快\n"
  #=> "e 樂0\n"
