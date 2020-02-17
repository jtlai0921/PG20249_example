require "fileutils"
FileUtils.install("src.txt", "/some/where/dir", :mode=>0644)
