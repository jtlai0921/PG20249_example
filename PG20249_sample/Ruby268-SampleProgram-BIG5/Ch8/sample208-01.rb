# 參照$HOME
p ENV["HOME"]	#=> "/home/aamine"

# 設定$MAILDIR
ENV["MAILDIR"] = "/home/aamine/Maildir"

# 刪除$MAILDIR
ENV.delete("MAILDIR")
