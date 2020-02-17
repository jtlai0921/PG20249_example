def seek_last_lines2(file, n)
  i = 0
  file.reverse_each{
    i += 1
    break if i >= n
  }
  return file.pos
end
