p "\t今天的午餐\n海膽 \n".sub(/\s+/, "")	#=> "今天的午餐\n海膽 \n"
p "\t今天的午餐\n海膽 \n".gsub(/\s+/, "")	#=> "今天的午餐海膽"