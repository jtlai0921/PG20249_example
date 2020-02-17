require "fileutils"
FileUtils.chdir("/tmp", :verbose=>true)
FileUtils.mkdir("/foo", :mode=>0700, :noop=> true, :verbose=>true)
FileUtils.rm_r("/foo", :noop=>true, :verbose=>true)
