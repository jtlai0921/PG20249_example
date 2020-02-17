require "find"
Find.find("."){|path|
  next unless File.directory?(path)
  Find.prune if path.split("/").size > 2
  puts path
}
