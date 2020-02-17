require 'csv'

array = ["foo", "bar", '"test"']
str = CSV.generate_line(array)
p str	#=> "foo,bar,\"\"\"test\"\"\""
