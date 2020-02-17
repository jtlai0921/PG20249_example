require "fileutils"
FileUtils.rm_r("dir")
FileUtils.rm_r("foo.txt")
FileUtils.rm_r(["dir1", "dir2"])
FileUtils.rm_r(Dir.glob("dir*"))
