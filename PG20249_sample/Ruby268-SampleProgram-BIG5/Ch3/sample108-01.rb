array1 = ["Perl", "Python", "Ruby"]
array2 = ["Perl", "PHP"]
p array1 | array2		#=> ["Perl", "Python", "Ruby", "PHP"]
p array1 + array2		#=> ["Perl", "Python", "Ruby", "Perl", "PHP"]
