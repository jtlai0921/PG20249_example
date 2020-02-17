# 在當前目錄下的C原始碼與標頭檔
Dir.glob("*.[ch]")

# 在當前目錄下的HTML檔案
Dir.glob("*.{html,htm}", File::FNM_CASEFOLD)
Dir.glob("*.html\0*.htm\0*.HTML\0*.HTM")

# 在家目錄下以點開頭的目錄及檔案
Dir.glob(File.expand_path("~/.*"))

# 所有的「foo～」與「bar～」
Dir.glob("{foo,bar}*")
Dir.glob("foo*\0bar*")

# foo.a與foo.b與bar.a與bar.b
Dir.glob("*{foo,bar}.{a,b}")

# 當前目錄下的所有檔案與目錄
Dir.glob("**/*")

# 當前目錄下的所有目錄
Dir.glob("**/")

# 當前目錄下的所有目錄下包含的 Ruby Script與CGI
Dir.glob("**/*.{rb,cgi}")

# /etc目錄下的所有目錄
Dir.glob("/etc/**/")
