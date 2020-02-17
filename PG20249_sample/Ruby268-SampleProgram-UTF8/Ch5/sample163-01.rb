require "tempfile"

def insert(path, start_line, data)
  temp = Tempfile.new("mytemp", File.dirname(path))
  File.open(path){|file|
    start_line.times{	# (1) 將插入位置之前的資料複製到暫存檔中
      if line = file.gets
        temp.write(line)
      end
    }
    temp.write(data)	# (2) 將要插入的資料附加至暫存檔
    while line = file.gets	# (3) 複製剩下的資料
      temp.write(line)
    end
  }
  mode = File.stat(path).mode	# 保存原來檔案的存取權限
  File.rename(temp.path, path)	# (4) 將暫存檔更名為原來檔案之檔名
  File.chmod(mode, path)		# 設定新檔案的存取權限
end

insert(ARGV[0], ARGV[1].to_i, $stdin.read)
