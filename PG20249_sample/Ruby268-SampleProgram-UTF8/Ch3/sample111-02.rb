array = ['"foo"', '"bar"', '"test"']
str = '"' + array.map{|str| str.gsub(/"/, '""')}.join('","') + '"'
p str	#=> "\"\"\"foo\"\"\",\"\"\"bar\"\"\",\"\"\"test\"\"\""
