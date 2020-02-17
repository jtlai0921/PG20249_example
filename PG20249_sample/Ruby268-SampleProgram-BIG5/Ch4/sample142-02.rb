File.symlink("real.txt", "symlink.txt")
p File.readlink("symlink.txt")		#=> "real.txt"
