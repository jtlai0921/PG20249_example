p File.expand_path("ruby", "/usr/local/bin")
  #=> "/usr/local/bin/ruby"
p File.expand_path("./ruby", "/usr/local/bin")
  #=> "/usr/local/bin/ruby"
p File.expand_path("../lib", "/usr/local/bin")
  #=> "/usr/local/lib"
