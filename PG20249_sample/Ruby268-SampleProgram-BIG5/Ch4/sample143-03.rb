def same_entity?(path1, path2)
  st1 = File.stat(path1)
  st2 = File.stat(path2)
  if st1.dev == st2.dev && st1.ino == st2.ino
    return true
  end
  return false
end
