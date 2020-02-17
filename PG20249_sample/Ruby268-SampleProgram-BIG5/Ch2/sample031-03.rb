require "strscan"

scanner = StringScanner.new("abc def ghi jkl")
result = []
until scanner.eos?
  result.push scanner.scan(/\w+|\W+/)
end
p result	#=> ["abc", " ", "def", " ", "ghi", " ", "jkl"]
