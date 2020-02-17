def lstrip(str)
  str.sub(/\A\s+/, "")
end

def rstrip(str)
  str.sub(/\s+\z/, "")
end

p lstrip("\t 哈哈 \r\n")	#=> "哈哈 \r\n"
p rstrip("\t 哈哈 \r\n")	#=> "\t 哈哈"
