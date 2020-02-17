require "fileutils"
FileUtils.chmod(0644, "foo.txt")
FileUtils.chmod(0644, ["foo.txt", "bar.txt"])
