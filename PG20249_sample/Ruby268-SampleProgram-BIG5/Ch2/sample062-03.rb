# �H��r�����A���J����ޭȬ�3����m
str = "�ǵ{���]�p"
str.sub!(/\A.{3}/m){|s| s + "inserted" }
p str	#=> "�ǵ{��inserted�]�p"
