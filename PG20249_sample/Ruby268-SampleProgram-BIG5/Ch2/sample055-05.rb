def rstrip(str)
  str.sub(/\s+\z/, "")
end

p rstrip("line\n")		#=> "line"
p rstrip("line\r\n")		#=> "line"
p rstrip("line\r")		#=> "line"
p rstrip("line\t \n")	#=> "line"
p rstrip("line")		#=> "line"
