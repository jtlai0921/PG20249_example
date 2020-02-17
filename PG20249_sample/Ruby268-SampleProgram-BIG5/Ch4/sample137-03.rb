require "fileutils"
FileUtils.rm(["foo.txt", "bar.txt"], :force=>true)
