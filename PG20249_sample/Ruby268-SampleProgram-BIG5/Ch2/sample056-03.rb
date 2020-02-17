def lstrip(str)
  str.sub(/\A\s+/, "")
end

def rstrip(str)
  str.sub(/\s+\z/, "")
end

p lstrip("\t «¢«¢ \r\n")	#=> "«¢«¢ \r\n"
p rstrip("\t «¢«¢ \r\n")	#=> "\t «¢«¢"
