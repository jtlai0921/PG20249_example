require "fileutils"
FileUtils.mkdir_p("foo/bar/baz")
FileUtils.mkdir_p("foo/bar/baz", :mode=>0755)
FileUtils.mkdir_p(["foo/bar/baz", "hoge/funi"])
