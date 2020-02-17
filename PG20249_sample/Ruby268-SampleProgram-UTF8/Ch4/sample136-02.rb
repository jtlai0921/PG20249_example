require "fileutils"
FileUtils.cp("foo.txt", "dir")
FileUtils.cp(["foo.txt", "bar.txt"], "dir")
FileUtils.cp(Dir.glob("*.txt"), "dir")
