t0 = Time.now		# ���q�e����ڮɶ�
tms0 = Process.times	# ���q�e��CPU�ɶ�
100000.times{ File.read("/etc/hosts") }	# Ū���ɮ�10�U��
t1 = Time.now		# ���q�᪺��ڮɶ�
tms1 = Process.times	# ���q�᪺CPU�ɶ�

p [t1 - t0, tms1.utime - tms0.utime, tms1.stime - tms0.stime]
  #=> [1.987855, 0.96, 0.99]
