require "open3"
Open3.popen3("cvs update install.rb"){|stdin, stdout, stderr|
  stdin.close	# �bcvs update���S����J�����n�A�ҥH���W����
  print stdout.read
  print stderr.read
}
