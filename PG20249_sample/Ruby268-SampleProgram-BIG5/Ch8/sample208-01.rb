# �ѷ�$HOME
p ENV["HOME"]	#=> "/home/aamine"

# �]�w$MAILDIR
ENV["MAILDIR"] = "/home/aamine/Maildir"

# �R��$MAILDIR
ENV.delete("MAILDIR")
