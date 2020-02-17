p "FrontPage".sub(/(.)([A-Z])/){ $1 + " " + $2}	#> "Front Page"
p "MyToDo".gsub(/(.)([A-Z])/){$1 + " " + $2}		#=> "My To Do"
