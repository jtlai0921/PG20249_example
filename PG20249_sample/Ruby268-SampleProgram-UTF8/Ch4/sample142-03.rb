File.link("foo.txt", "hardlink.txt")

require "fileutils"
FileUtils.ln("foo.txt", "hardlink.txt")
FileUtils.ln(["foo.txt", "bar.txt"], "dir")
