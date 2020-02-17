File.symlink("real.txt", "symlink.txt")

require "fileutils"
FileUtils.ln_s("real.txt", "symlink.txt")
FileUtils.ln_s(["foo.txt", "bar.txt"], "dir")
