# 以文字為單位，插入到索引值為3的位置
str = "學程式設計"
str.sub!(/\A.{3}/m){|s| s + "inserted" }
p str	#=> "學程式inserted設計"
