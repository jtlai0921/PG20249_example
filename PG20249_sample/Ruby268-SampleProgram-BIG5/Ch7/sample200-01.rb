require "date"

p Date.new(2000).leap?	#=> true
p Date.new(2001).leap?	#=> false
p Date.new(2008).leap?	#=> true
p Date.new(2100).leap?	#=> false
