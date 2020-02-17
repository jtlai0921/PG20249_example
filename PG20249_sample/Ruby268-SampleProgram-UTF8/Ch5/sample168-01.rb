def seek_last_lines(file, n)
  ary = []
  while true
    pos = file.pos			# 紀錄開始的位置
    line = file.gets			# 讀出一行
    break unless line		# 如果沒有讀取到任何資料就跳出迴圈
    ary.push(pos)			# 將開始位置加入陣列
    ary.shift if ary.size > n		# 刪除多餘的元素
  end
  post = ary[0] || 0		# 行開頭的位置或者為0
  file.seek(pos, IO::SEEK_SET)
  return pos
end

filename = ARGV[0]
lines = ARGV[1] ? ARGV[1].to_i : 1
File.open(filename, "r+"){|file|
  pos = seek_last_lines(file, lines)
  print "size = #{pos}\n"
  file.truncate(pos)
}
