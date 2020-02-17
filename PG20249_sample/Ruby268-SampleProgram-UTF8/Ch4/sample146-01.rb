require "fileutils"

FileUtils.cp_r("foo", "bar")
FileUtils.cp_r("foo", "bar", :preserve=>true)
FileUtils.cp_r(["foo", "bar"], "dir")
FileUtils.cp_r(Dir.glob("foo*"), "dir")
