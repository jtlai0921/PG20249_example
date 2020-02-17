str = "abc def ghi jkl"
result = []
while token = str.slice(/\w+/)
  result.push token
  str = $'
end
p result	#=> ["abc", "def", "ghi", "jkl"]
