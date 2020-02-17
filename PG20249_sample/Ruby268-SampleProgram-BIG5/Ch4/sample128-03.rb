filename = "c:\\foo\\bar\\test.rb"
p File.split(filename)	#=> ["c:\\foo\\bar", "test.rb"]
p File.dirname(filename)	#=> "\\foo\\bar"
p File.basename(filename)	#=> "test.rb"
