require "fileutils"
FileUtils.mv("foo.txt", "foo.back")
FileUtils.mv(["foo.txt", "bar.txt"], "dir")
FileUtils.mv(Dir.glob("*.txt"), "dir")
