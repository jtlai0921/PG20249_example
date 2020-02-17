def commify(numstr)
  int, frac = *numstr.split(".")
  int = int.gsub(/(\d)(?=\d{3}+$)/, '\\1,')
  int << "." << frac if frac
  return int
end

p commify("1234567890")	#=> "1,234,567,890"
p commify("12345.6789")	#=> "12,345.6789"
