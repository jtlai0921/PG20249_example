require "find"
Find.find(File.expand_path("~/")){|path|
  next unless File.directory?(path)
  puts path
}
