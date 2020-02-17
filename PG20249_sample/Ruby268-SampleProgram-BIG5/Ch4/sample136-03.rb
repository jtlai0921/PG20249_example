require "fileutils"
FileUtils.cp("foo.txt", "bar.txt", :preserve=>true)
