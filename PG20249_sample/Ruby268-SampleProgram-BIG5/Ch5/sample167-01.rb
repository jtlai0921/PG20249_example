require "tempfile"

def remove_head(file, line)
  temp = Tempfile.new("mytemp", File.dirname(file))
  open(file){|io|
    line.times{ io.gets }	# �ȸ��Lline��
    while line = io.gets	# �ƻs�ѤU�����
      temp.write(line)
    end
  }
  mode = File.stat(file).mode		# �O�s���ɮת��s���v��
  File.rename(temp.path, file)	# �ܧ��ɦW
  File.chmod(mode, file)		# �]�w�s�ɮת��s���v��
end

remove_head(ARGV[0], ARGV[1].to_i)
