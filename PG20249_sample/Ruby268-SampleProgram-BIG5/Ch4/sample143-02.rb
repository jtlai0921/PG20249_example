def same_content?(path1, path2)
  if File.size(path1) != File.size(path2)
    return false
  end
  open(path1){|io1|
    open(path2){|io2|
      while true
        data1 = io1.read(4096)
        data2 = io2.read(4096)
        return true if data1.nil? && data2.nil?
        return false if data1 != data2
      end
    }
  }
  return true
end
