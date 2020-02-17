require "tempfile"

def remove_head(file, line)
  temp = Tempfile.new("mytemp", File.dirname(file))
  open(file){|io|
    line.times{ io.gets }	# 僅跳過line行
    while line = io.gets	# 複製剩下的資料
      temp.write(line)
    end
  }
  mode = File.stat(file).mode		# 保存原檔案的存取權限
  File.rename(temp.path, file)	# 變更檔名
  File.chmod(mode, file)		# 設定新檔案的存取權限
end

remove_head(ARGV[0], ARGV[1].to_i)
