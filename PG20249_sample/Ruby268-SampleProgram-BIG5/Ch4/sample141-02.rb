require "fileutils"
FileUtils.touch("foo.txt")
FileUtils.touch(["foo.txt", "bar.txt"])
