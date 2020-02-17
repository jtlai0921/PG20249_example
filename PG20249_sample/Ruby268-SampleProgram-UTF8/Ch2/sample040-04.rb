def canonical_header_name(str)
  str.split(/-/).map{|s| s.capitalize }.join("-")
end
p canonical_header_name("content-type")	#=> "Content-Type"
p canonical_header_name("Content-type")	#=> "Content-Type"
p canonical_header_name("coNTEnt-tyPE")	#=> "Content-Type"
