def jstrip(str)
  str.sub(/\A[\s　]+/, "").sub(/[\s　]+\z/, "")
end

def jlstrip(str)
  str.sub(/\A[\s　]+/, "")
end

def jrstrip(str)
  str.sub(/[\s　]+\z/, "")
end

p jstrip("\t　哈哈\r　\n")	#=> "哈哈"
p jlstrip("\t　哈哈\r　\n")	#=> "\t　哈哈"
p jrstrip("\t　哈哈\r　\n")	#=> "哈哈\r　\n"
