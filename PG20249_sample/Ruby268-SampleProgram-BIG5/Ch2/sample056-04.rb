def jstrip(str)
  str.sub(/\A[\s¡@]+/, "").sub(/[\s¡@]+\z/, "")
end

def jlstrip(str)
  str.sub(/\A[\s¡@]+/, "")
end

def jrstrip(str)
  str.sub(/[\s¡@]+\z/, "")
end

p jstrip("\t¡@«¢«¢\r¡@\n")	#=> "«¢«¢"
p jlstrip("\t¡@«¢«¢\r¡@\n")	#=> "\t¡@«¢«¢"
p jrstrip("\t¡@«¢«¢\r¡@\n")	#=> "«¢«¢\r¡@\n"
