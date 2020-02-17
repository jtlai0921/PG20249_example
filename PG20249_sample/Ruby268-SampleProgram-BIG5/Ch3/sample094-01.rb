array = ["perl", "python", "ruby"]
array.map!{|word| word.capitalize}
p array	#=> ["Perl", "Python", "Ruby"]
