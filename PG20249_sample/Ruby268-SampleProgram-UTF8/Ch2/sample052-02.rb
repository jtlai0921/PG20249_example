queue = %w(可 愛 貌)
p "ㄎㄜㄎㄜㄎㄜ".sub(/ㄎㄜ/){ queue.shift }
  #=> "可ㄎㄜㄎㄜ"
queue = %w(可 愛 貌)
p "ㄎㄜㄎㄜㄎㄜ".gsub(/ㄎㄜ/){ queue.shift }
  #=> "可愛貌"
