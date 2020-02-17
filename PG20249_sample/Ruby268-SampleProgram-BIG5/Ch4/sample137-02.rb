require "fileutils"
FileUtils.rm("foo.txt")
FileUtils.rm(["foo.txt", "bar.txt"])
