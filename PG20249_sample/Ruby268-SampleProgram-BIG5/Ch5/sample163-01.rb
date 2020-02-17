require "tempfile"

def insert(path, start_line, data)
  temp = Tempfile.new("mytemp", File.dirname(path))
  File.open(path){|file|
    start_line.times{	# (1) �N���J��m���e����ƽƻs��Ȧs�ɤ�
      if line = file.gets
        temp.write(line)
      end
    }
    temp.write(data)	# (2) �N�n���J����ƪ��[�ܼȦs��
    while line = file.gets	# (3) �ƻs�ѤU�����
      temp.write(line)
    end
  }
  mode = File.stat(path).mode	# �O�s����ɮת��s���v��
  File.rename(temp.path, path)	# (4) �N�Ȧs�ɧ�W������ɮפ��ɦW
  File.chmod(mode, path)		# �]�w�s�ɮת��s���v��
end

insert(ARGV[0], ARGV[1].to_i, $stdin.read)
