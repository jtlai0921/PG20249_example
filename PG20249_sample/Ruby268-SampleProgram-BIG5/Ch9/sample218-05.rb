require "open3"
stdin, stdout, stderr = Open3.popen3("cvs update install.rb")
stdin.close	# �]���bcvs update���S����J�����n�ҥH���W����
print stdout.read
print stderr.read
stdout.close	# �����B�z
stderr.close	# �����B�z
