p "123456789".scan(/.{1,4}/m)
  #=> ["1234", "5678", "9"]

p "今天的天空非常藍".scan(/.{1,4}/m)
  #=> ["今天的天", "空非常藍"]