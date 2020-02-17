array = ["Perl", "PHP", "Python", "Ruby"]
# 如果執行破壞性的reverse的話...
p array.reverse!	#=> ["Ruby", "Python", "PHP", "Perl"]
# array本身的內容會被替換掉
p array		#=> ["Ruby", "Python", "PHP", "Perl"]
