def seek_last_lines(file, n)
  ary = []
  while true
    pos = file.pos			# �����}�l����m
    line = file.gets			# Ū�X�@��
    break unless line		# �p�G�S��Ū��������ƴN���X�j��
    ary.push(pos)			# �N�}�l��m�[�J�}�C
    ary.shift if ary.size > n		# �R���h�l������
  end
  post = ary[0] || 0		# ��}�Y����m�Ϊ̬�0
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
