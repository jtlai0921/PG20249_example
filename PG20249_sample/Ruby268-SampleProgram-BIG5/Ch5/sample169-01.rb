File.open("log.txt", "a"){|file|
  STDOUT.reopen(file)
}

# �U����зǿ�X���g�J�|��X��log.txt
puts "!!! STDOUT is redirected. !!!"
system("ls")
