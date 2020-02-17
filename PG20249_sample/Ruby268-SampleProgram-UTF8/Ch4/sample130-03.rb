flag = File::FNM_PATHNAME | File::FNM_DOTMATCH | File::FNM_CASEFOLD
p File.fnmatch("*/mail", "~/Mail", flag)	#=> true
p File.fnmatch("*/*emacs", "~/.emacs", flag)	#=> true
