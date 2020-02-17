require "stringio"

f = StringIO.new
f.puts "config"
f.printf "mem=%d\n", 1024
p f.string		#=> "config\nmem=1024\n"
