# ���A����
require "drb"
obj = ["drb", "server"]	# ���}������
DRb.start_service("druby://localhost:8787", obj)
DRb.thread.join	# �@�w�n���ݰ���������I
